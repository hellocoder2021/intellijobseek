package com.intellijobseek.utility;

/**
 *
 * @author hp 1
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionProvider {
    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                //driver load
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("driver loaded");
                //connection estb
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intellijobseek", "root", "root");
            }
            System.out.println("connection is successfull");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("connection is unsuccessfull");
        }
        return con;

    }
}
