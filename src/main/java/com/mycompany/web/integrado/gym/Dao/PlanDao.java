package com.mycompany.web.integrado.gym.Dao;

import com.mycompany.web.integrado.gym.Config.ConexionDB;
import com.mycompany.web.integrado.gym.Model.PlanModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PlanDao {

    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;

    //Insertar Plan
    public int registrarPlan(PlanModel plan) {
        String SQL = "INSERT INTO plan (nombre, descripcion, duracion_dias, precio, tipo, estado) VALUES (?,?,?,?,?,?)";
        int x = 0;
        try {
            conn = ConexionDB.abrir();
            stmt = conn.prepareStatement(SQL);
            stmt.setString(1, plan.getNombre());
            stmt.setString(2, plan.getDescripcion());
            stmt.setInt(3, plan.getDuracion_dias());
            stmt.setDouble(4, plan.getPrecio());
            stmt.setString(5, plan.getTipo());
            stmt.setString(6, plan.getEstado());
            x = stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al insertar plan: " + e);
        }
        return x;
    }

    public int eliminarPlan(int id) {
        String SQL = "DELETE FROM plan WHERE id_plan=?";
        int x = 0;
        try {
            conn = ConexionDB.abrir();
            stmt = conn.prepareStatement(SQL);
            stmt.setInt(1, id);
            x = stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al eliminar plan: " + e);
        }
        return x;
    }
}
