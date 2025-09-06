package com.mycompany.web.integrado.gym.Services;

import com.mycompany.web.integrado.gym.Dao.UsuarioDao;
import com.mycompany.web.integrado.gym.Model.UsuarioModel;

import java.sql.SQLException;

public class UsuarioService {
    private UsuarioDao usuarioDao;

    public UsuarioService(){
        this.usuarioDao = new UsuarioDao();
    }

    public boolean existeDNI(String dni) throws SQLException{
        return usuarioDao.existeDni(dni);
    }

    public int isertar(UsuarioModel usuarioModel)throws SQLException{
        return usuarioDao.insertar(usuarioModel);
    }
    public UsuarioModel obtenerPorId(int id_usuario)throws SQLException{
        return usuarioDao.obtenerPorId(id_usuario);
    }
}
