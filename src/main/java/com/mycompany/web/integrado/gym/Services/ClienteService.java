package com.mycompany.web.integrado.gym.Services;

import com.mycompany.web.integrado.gym.Dao.ClienteDao;
import com.mycompany.web.integrado.gym.Model.ClienteModel;

import java.sql.SQLException;

public class ClienteService {
    private ClienteDao clienteDao;

    public  ClienteService(){
        this.clienteDao = new ClienteDao();
    }
    public int insertar(ClienteModel clienteModel) throws SQLException{
        return clienteDao.insertar(clienteModel);
    }
    public ClienteModel ObtenerPorld(int idcliente){

    }
}
