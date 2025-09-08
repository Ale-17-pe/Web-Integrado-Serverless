package com.mycompany.web.integrado.gym.Controller;
import com.mycompany.web.integrado.gym.Model.*;
import com.mycompany.web.integrado.gym.Services.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.logging.*;

public class RegistroServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        UsuarioService usuarioService = new UsuarioService();
        UsuarioModel usuario = new UsuarioModel();
        ClienteModel cliente = new ClienteModel();
        ClienteService service = new ClienteService();
        // Obtener datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String direccion = request.getParameter("direccion");
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String genero = request.getParameter("genero");
        String contrasena = request.getParameter("contrasena");
        String confirmarContrasena = request.getParameter("confirmarContrasena");


        System.out.println("error1");

        //llenos los datos en usuario
        usuario.setDni(dni);
        usuario.setPassword(contrasena);
        usuario.setUsuario_login("cliente");

        //leno los datos en cliente
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setCorreo(correo);
        cliente.setTelefono(telefono);
        cliente.setDireccion(direccion);
        cliente.setGenero(genero);
        cliente.setFecha_nacimento(Date.valueOf(fechaNacimiento));

        if (!service.validarCliente(cliente, usuario)) {
            // Mostrar error o redirigir
            response.sendRedirect("registrar.jsp?error=validacion");
            return;
        }
        System.out.println("error2");

        // Además validar que las contraseñas coincidan
        if (!service.contrasenasCoinciden(contrasena, confirmarContrasena)) {
            response.sendRedirect("registrar.jsp?error=contrasenas_no_coinciden");
            return;
        }
        System.out.println("error3");
        
        int a =usuarioService.isertar(usuario);
       
        // Guardar en sesión
        HttpSession session = request.getSession();
        session.setAttribute("usuarioTemp", usuario);
        session.setAttribute("clienteTemp", cliente);
        
        
        response.sendRedirect("index.jsp");

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
            Logger.getLogger(RegistroServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(RegistroServlet.class.getName()).log(Level.SEVERE, null, ex);
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