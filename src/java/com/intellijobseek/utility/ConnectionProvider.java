/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
