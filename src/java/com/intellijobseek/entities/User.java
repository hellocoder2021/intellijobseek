package com.intellijobseek.entities;

import java.sql.*;

public class User {
    private String user_id;
    private String user_email;
    private String user_passwd;
    private String user_first_name;
    private String user_last_name;
    
    private String user_contact;
    private String profile_pic;
    private String background_pic;
    private Timestamp user_joined;
    private String user_about;
    private String user_website;

    public String getUser_website() {
        return user_website;
    }

    public void setUser_website(String user_website) {
        this.user_website = user_website;
    }

    
    public User() {
    }
    

    public User(String user_id, String user_email, String user_passwd, String user_first_name, String user_last_name) {
        this.user_id = user_id;
        this.user_email = user_email;
        this.user_passwd = user_passwd;
        this.user_first_name = user_first_name;
        this.user_last_name = user_last_name;
    }

    public User(String user_id, String user_email, String user_passwd, String user_first_name, String user_last_name, String user_contact, String profile_pic, String background_pic, Timestamp user_joined, String user_about) {
        this.user_id = user_id;
        this.user_email = user_email;
        this.user_passwd = user_passwd;
        this.user_first_name = user_first_name;
        this.user_last_name = user_last_name;
        this.user_contact = user_contact;
        this.profile_pic = profile_pic;
        this.background_pic = background_pic;
        this.user_joined = user_joined;
        this.user_about = user_about;
    }
    
    

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_passwd() {
        return user_passwd;
    }

    public void setUser_passwd(String user_password) {
        this.user_passwd = user_password;
    }

    public String getUser_first_name() {
        return user_first_name;
    }

    public void setUser_first_name(String user_first_name) {
        this.user_first_name = user_first_name;
    }

    public String getUser_last_name() {
        return user_last_name;
    }

    public void setUser_last_name(String user_last_name) {
        this.user_last_name = user_last_name;
    }

    public String getUser_contact() {
        return user_contact;
    }

    public void setUser_contact(String user_contact) {
        this.user_contact = user_contact;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }

    public String getBackground_pic() {
        return background_pic;
    }

    public void setBackground_pic(String background_pic) {
        this.background_pic = background_pic;
    }

    public Timestamp getUser_joined() {
        return user_joined;
    }

    public void setUser_joined(Timestamp user_joined) {
        this.user_joined = user_joined;
    }

    public String getUser_about() {
        return user_about;
    }

    public void setUser_about(String user_about) {
        this.user_about = user_about;
    }
    
    
    
    
    
    
}
