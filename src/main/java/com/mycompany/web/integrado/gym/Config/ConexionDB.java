package com.mycompany.web.integrado.gym.Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String url="jdbc:mysql://ujlagkksgwznacvi:Fax0KoS8VtLZh23lrGst@btlwtrvs6ynwdaf6pt1z-mysql.services.clever-cloud.com:3306/btlwtrvs6ynwdaf6pt1z";
    private static final String Drive="";
    private static final String User= "ujlagkksgwznacvi";
    private static final String Pass="Fax0KoS8VtLZh23lrGst";

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

    public static void cerrar(Connection conn){
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
