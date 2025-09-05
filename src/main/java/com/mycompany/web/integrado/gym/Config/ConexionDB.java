package com.mycompany.web.integrado.gym.Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String url="";
    private static final String Drive="";
    private static final String User= "";
    private static final String Pass="";

    public static Connection abrir(){
        Connection conn= null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url,User,Pass);
        }catch (ClassNotFoundException | SQLException e){
            System.out.println("Conectado a la DB:");
            e.printStackTrace();
        }
        return conn;
    }

    private static void cerrar(Connection conn){
        try {
            if (conn !=null && !conn.isClosed()){
                conn.close();
            }
        }catch (SQLException e){
            System.out.println("Error al cerrar la conexión:");
            e.printStackTrace();
        }
    }
}
