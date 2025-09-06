package com.mycompany.web.integrado.gym.Dao;

import com.mycompany.web.integrado.gym.Config.ConexionDB;
import com.mycompany.web.integrado.gym.Model.UsuarioModel;

import java.sql.*;

public class UsuarioDao {
    public int insertar(UsuarioModel usuarioModel) throws SQLException {
        int idGenerado = -1;
        String INSERT_SQL = "INSERT INTO usuario (dni, contraseña, tipo_usuario) VALUES (?, ?, ?)";

        try (Connection conn = ConexionDB.abrir();
             PreparedStatement stmt = conn.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS)) {

            stmt.setString(1, usuarioModel.getDni());
            stmt.setString(2, usuarioModel.getPassword_hash()); // ⚠️ se recomienda encriptar antes de guardar
            stmt.setString(3, usuarioModel.getUsuario_login());

            int filas = stmt.executeUpdate();

            if (filas > 0) {
                try (ResultSet rs = stmt.getGeneratedKeys()) {
                    if (rs.next()) {
                        idGenerado = rs.getInt(1);
                    }
                }
            }
        }
        return idGenerado;
    }
    public boolean existeDni(String dni) throws SQLException {
        String sql = "SELECT COUNT(*) FROM usuario WHERE dni = ?";
        try (Connection conn = ConexionDB.abrir();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, dni);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        }
        return false;
    }
    public UsuarioModel validar(String dni, String contrasena) throws SQLException {
        String sql = "SELECT * FROM usuario WHERE dni = ? AND contraseña = ?";
        UsuarioModel usuario = null;

        try (Connection conn = ConexionDB.abrir();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, dni);
            stmt.setString(2, contrasena); // ⚠️ comparar con hash si usas BCrypt
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    usuario = mapearUsuario(rs);
                }
            }
        }
        return usuario;
    }
    public UsuarioModel obtenerPorId(int idUsuario) throws SQLException {
        String sql = "SELECT * FROM usuario WHERE id_usuario = ?";
        UsuarioModel usuarioModel = null;

        try (Connection conn = ConexionDB.abrir();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idUsuario);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    usuarioModel = mapearUsuario(rs);
                }
            }
        }
        return usuarioModel;
    }
    private UsuarioModel mapearUsuario(ResultSet rs) throws SQLException {
        UsuarioModel usuarioModel = new UsuarioModel();
        usuarioModel.setId_usuario(rs.getInt("id_usuario"));
        usuarioModel.setDni(rs.getString("dni"));
        usuarioModel.setPassword_hash(rs.getString("password"));
        usuarioModel.setUsuario_login(rs.getString("tipo_usuario"));
        return usuarioModel;
    }
}
