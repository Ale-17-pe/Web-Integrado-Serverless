package com.mycompany.web.integrado.gym.Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String URL = "jdbc:mysql://localhost:3306/gym";
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String USER = "ale";
    private static final String PASS = "Ale17@#05ñ";

    public static Connection abrir() {
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("✅ Conexión exitosa a la BD");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ Driver JDBC no encontrado");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ Error al conectar a la BD");
            e.printStackTrace();
        }
        return conn;
    }

    public static void cerrar(Connection conn) {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
                System.out.println("🔒 Conexión cerrada");
            }
        } catch (SQLException e) {
            System.out.println("❌ Error al cerrar la conexión");
            e.printStackTrace();
        }
    }
}
