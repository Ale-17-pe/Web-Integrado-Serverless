package com.mycompany.web.integrado.gym.Controller;

import com.mycompany.web.integrado.gym.DTO.ClienteDTO;
import com.mycompany.web.integrado.gym.DTO.RecepcionistaDTO;
import com.mycompany.web.integrado.gym.Model.ClienteModel;
import com.mycompany.web.integrado.gym.Model.PlanModel;
import com.mycompany.web.integrado.gym.Model.UsuarioModel;
import com.mycompany.web.integrado.gym.Services.ClienteService;
import com.mycompany.web.integrado.gym.Services.LoginService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String dni = request.getParameter("dni");
        String password = request.getParameter("contrasena");
        ClienteService clienteService = new ClienteService();
        LoginService loginService = new LoginService();
        UsuarioModel usuario;
        ClienteDTO clienteDTO;
        RecepcionistaDTO recepcionistaDTO;

        usuario = loginService.validar(dni, password);

        System.out.println("usuario es " + usuario);
        if (usuario != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogeado", usuario);
            PlanModel plan = (PlanModel) session.getAttribute("PlanSeleccionado");
            // Redirige según el tipo de usuario
            String tipo = usuario.getDni();

            if ("cliente".equals(tipo)) {
                if (plan != null) {
                    ClienteModel clienteModel = clienteService.obternerclienteidusuario(usuario.getId_usuario());
                    session.setAttribute("usuarioTemp", usuario);
                    session.setAttribute("clienteTemp", clienteModel);
                    response.sendRedirect("pago.jsp");
                } else {
                    clienteDTO = loginService.obetenerClienteDTO(usuario);
                    session.setAttribute("clientedto", clienteDTO);
                    response.sendRedirect("portalCliente.jsp");
                }

            } else if ("recepcionista".equals(tipo)) {
                recepcionistaDTO = loginService.obetenerRecepcionistaDTO(usuario);
                session.setAttribute("recepcionistadto", recepcionistaDTO);
                response.sendRedirect("portalRecepcionista.jsp");
            } else if ("administrador".equals(tipo)) {
                response.sendRedirect("portalAdmin.jsp");
            } else {
                response.sendRedirect("login.jsp?error=tipo_desconocido");
            }

        } else {
            response.sendRedirect("login.jsp?error=credenciales_invalidas");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
