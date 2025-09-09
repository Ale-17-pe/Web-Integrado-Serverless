package com.mycompany.web.integrado.gym.Controller;

import com.mycompany.web.integrado.gym.Dao.PlanDao;
import com.mycompany.web.integrado.gym.Model.PlanModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/PlanServlet")
public class PlanServlet extends HttpServlet {

    private PlanDao dao = new PlanDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (accion == null) {
            accion = "listar";
        }

        switch (accion) {
            case "eliminar":
                int id = Integer.parseInt(request.getParameter("id"));
                dao.eliminar(id);
                response.sendRedirect("PlanServlet?accion=listar");
                break;

            case "listar":
            default:
                List<PlanModel> lista = dao.obtenerTodos();
                request.setAttribute("planes", lista);
                request.getRequestDispatcher("planes.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        int duracion = Integer.parseInt(request.getParameter("duracion_dias"));
        double precio = Double.parseDouble(request.getParameter("precio"));
        String tipo = request.getParameter("tipo");
        String estado = request.getParameter("estado");

        PlanModel plan = new PlanModel();
        plan.setNombre(nombre);
        plan.setDescripcion(descripcion);
        plan.setDuracion_dias(duracion);
        plan.setPrecio(precio);
        plan.setTipo(tipo);
        plan.setEstado(estado);

        dao.insertar(plan);
        response.sendRedirect("PlanServlet?accion=listar");
    }
}

