/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.intellijobseek.entities;

import com.intellijobseek.utility.*;

/**
 *
 * @author hp victus
 */
public class Organization {
    private String org_id;
   private  String org_name;
    private String org_type;
   private  String org_img;
    private String org_address;
   private  String org_country;
   private  String org_contact;
    private String email;

    public String getOrg_id() {
        return org_id;
    }

    public void setOrg_id(String org_id) {
        this.org_id = org_id;
    }

    public String getOrg_name() {
        return org_name;
    }

    public void setOrg_name(String org_name) {
        this.org_name = org_name;
    }

    public String getOrg_type() {
        return org_type;
    }

    public void setOrg_type(String org_type) {
        this.org_type = org_type;
    }

    public String getOrg_img() {
        return org_img;
    }

    public void setOrg_img(String org_img) {
        this.org_img = org_img;
    }

    public String getOrg_address() {
        return org_address;
    }

    public void setOrg_address(String org_address) {
        this.org_address = org_address;
    }

    public String getOrg_country() {
        return org_country;
    }

    public void setOrg_country(String org_country) {
        this.org_country = org_country;
    }

    public String getOrg_contact() {
        return org_contact;
    }

    public void setOrg_contact(String org_contact) {
        this.org_contact = org_contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Organization(String org_id, String org_name, String org_type, String org_img, String org_address, String org_country, String org_contact, String email) {
        this.org_id = org_id;
        this.org_name = org_name;
        this.org_type = org_type;
        this.org_img = org_img;
        this.org_address = org_address;
        this.org_country = org_country;
        this.org_contact = org_contact;
        this.email = email;
    }
    
}
