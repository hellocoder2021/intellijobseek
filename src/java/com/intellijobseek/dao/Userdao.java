package com.intellijobseek.dao;

import java.sql.*;
import com.intellijobseek.entities.*;

public class Userdao {

    private Connection con;
    
    public Userdao(Connection con) {
        this.con = con;
    }

    public boolean registerUser(User user) {
        try {
            //user ----------> database
            String query = "insert into user(user_id, user_email, user_passwd, user_first_name, user_last_name) values(?,?,?,?,?)";
            String user_first_name = user.getUser_first_name();
            String user_last_name = user.getUser_last_name();
            String user_email = user.getUser_email();
            String user_passwd = user.getUser_passwd();
            String user_id = user.getUser_id();
            if(con == null)
            {
                System.out.println("null connection");
            }
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, user_id);
            ps.setString(2, user_email);
            ps.setString(3, user_passwd);
            ps.setString(4, user_first_name);
            ps.setString(5, user_last_name);
            int s = ps.executeUpdate();
            if (s == 1) {
                System.out.println("user "+user.getUser_id()+" registered");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return false;
    }
    
    public User fetchUserByCredential(String email, String password) {
        User user = null;
        try {
            //database ------> User
            String query = "select * from user where user_email=? and user_passwd=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();
                
                user.setUser_id(set.getString("user_id"));
                user.setUser_email(set.getString("user_email"));
                user.setUser_passwd(set.getString("user_passwd"));
                user.setUser_about(set.getString("user_about"));
                user.setUser_first_name(set.getString("user_first_name"));
                user.setUser_last_name(set.getString("user_last_name"));
                user.setBackground_pic(set.getString("background_pic"));
                user.setProfile_pic(set.getString("profile_pic"));
                user.setUser_website(set.getString("user_website"));
                user.setUser_contact(set.getString("user_contact"));
//                user.setUser_joined(set.getDate("user_joined"));
                
                System.out.println("user detail fetched");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    
//    check whether the user already registered or not
    
    public boolean isExistingUser(String email)
    {
        try {
            
            String query = "select COUNT(user_email) from user where user_email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                if(set.getInt(1) >= 1)
                {
                    System.out.println("existing user");
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
//    get user by id from database : create cookies session
    
    public User getUserByUserID(String userID) {
        User user = null;
        try {
            //database ------> User
            String query = "select * from user where user_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userID);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user=new User();
                user.setUser_id(set.getString("user_id"));
                user.setUser_first_name(set.getString("user_first_name"));
                user.setUser_email(set.getString("user_email"));
                user.setBackground_pic(set.getString("background_pic"));
                user.setProfile_pic(set.getString("profile_pic"));
                user.setUser_about(set.getString("user_about"));
                user.setUser_contact(set.getString("user_contact"));
                user.setUser_last_name(set.getString("user_last_name"));
                user.setUser_website(set.getString("user_website"));
            }
        } catch (Exception e) {
            System.out.println("user not found 193 line error");
            e.printStackTrace();
        }
        return user;

    }
    
    
        
}
