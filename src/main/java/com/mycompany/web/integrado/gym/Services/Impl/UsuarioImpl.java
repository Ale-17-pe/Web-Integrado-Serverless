package com.mycompany.web.integrado.gym.Services.Impl;

import com.mycompany.web.integrado.gym.Model.UsuarioModel;
import com.mycompany.web.integrado.gym.Repository.UsuarioRepository;

import java.sql.SQLException;

public class UsuarioImpl implements UsuarioRepository {
    private final UsuarioRepository usuarioRepository;

    public UsuarioImpl(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @Override
    public boolean existeDni(String dni) throws SQLException {
        return usuarioRepository.existeDni(dni);
    }

    @Override
    public int insertar(UsuarioModel usuario) throws SQLException {
        return usuarioRepository.insertar(usuario);
    }

    @Override
    public UsuarioModel obtenerPorId(int idUsuario) throws SQLException {
        return usuarioRepository.obtenerPorId(idUsuario);
    }
}
