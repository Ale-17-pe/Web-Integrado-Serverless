package com.mycompany.web.integrado.gym.Controller;

import com.mycompany.web.integrado.gym.Services.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.http.*;

import java.io.*;

public class PlanServlet extends HttpServlet {
    /*

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PlanService planService = new PlanService();
        List<Plan> planes = planService.obtenerTodosLosPlanes();

        String idPlanMostrar = request.getParameter("mostrarPlan");
        if (idPlanMostrar != null) {
            // Guardar el ID del plan a mostrar como atributo
            request.setAttribute("planSeleccionadoId", Integer.parseInt(idPlanMostrar));
        }
        request.setAttribute("listaPlanes", planes);

        // Redirige a la vista (JSP)
        RequestDispatcher dispatcher = request.getRequestDispatcher("planes.jsp");
        dispatcher.forward(request, response);
    }

     */
/*
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

     */

}
