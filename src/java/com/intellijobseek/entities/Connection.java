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
public class Connection {
    private String con_id;
    private String recv_id;
    private String send_id;

    public Connection(String con_id, String recv_id, String send_id, boolean is_accepted) {
        this.con_id = con_id;
        this.recv_id = recv_id;
        this.send_id = send_id;
        this.is_accepted = is_accepted;
    }

    public String getCon_id() {
        return con_id;
    }

    public void setCon_id(String con_id) {
        this.con_id = con_id;
    }

    public String getRecv_id() {
        return recv_id;
    }

    public void setRecv_id(String recv_id) {
        this.recv_id = recv_id;
    }

    public String getSend_id() {
        return send_id;
    }

    public void setSend_id(String send_id) {
        this.send_id = send_id;
    }

    public boolean isIs_accepted() {
        return is_accepted;
    }

    public void setIs_accepted(boolean is_accepted) {
        this.is_accepted = is_accepted;
    }
    private boolean is_accepted;
}
