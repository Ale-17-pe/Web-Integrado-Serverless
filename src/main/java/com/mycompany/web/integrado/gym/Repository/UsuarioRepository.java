package com.mycompany.web.integrado.gym.Repository;

import com.mycompany.web.integrado.gym.Model.UsuarioModel;

import java.sql.SQLException;

public interface UsuarioRepository {
    boolean existeDni(String dni) throws SQLException;
    int insertar(UsuarioModel usuario) throws SQLException;
    UsuarioModel obtenerPorId(int idUsuario) throws SQLException;
}
