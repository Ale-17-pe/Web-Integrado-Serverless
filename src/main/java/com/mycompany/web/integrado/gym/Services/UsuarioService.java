package com.mycompany.web.integrado.gym.Services;

import com.mycompany.web.integrado.gym.Config.ConexionDB;
import com.mycompany.web.integrado.gym.Dao.UsuarioDao;
import com.mycompany.web.integrado.gym.Model.UsuarioModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;

public class UsuarioService {

    private UsuarioDao usuarioDao;
    

    public UsuarioService() {
        this.usuarioDao = new UsuarioDao();
    }

    public boolean existeDNI(String dni) throws SQLException {
        return usuarioDao.existeDni(dni);
    }

    public int insertar(UsuarioModel usuario, Connection conn) throws SQLException {
        String sql = "INSERT INTO usuarios (dni, password, usuario_login, tipo_usuario) VALUES (?, ?, ?, 'cliente')";

        try (PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, usuario.getDni());
            stmt.setString(2, usuario.getPassword());
            stmt.setString(3, usuario.getUsuario_login());

            int affectedRows = stmt.executeUpdate();

            if (affectedRows == 0) {
                return -1;
            }

            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                } else {
                    return -1;
                }
            }
        }
    }
    
    public int agregar(UsuarioModel usuarioModel) throws SQLException{
        return usuarioDao.insertar(usuarioModel);
    }
}
