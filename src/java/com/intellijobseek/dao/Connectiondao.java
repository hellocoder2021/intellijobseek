package com.intellijobseek.dao;

import com.intellijobseek.entities.Connect;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Connectiondao {

    private Connection con;

    public Connectiondao(Connection con) {
        this.con = con;
    }

    public boolean sendConnectionReq(Connect cnt) {
        try {
            
            String query = "insert into connection(con_id, sender_id, recv_id) values(?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, cnt.getCon_id());
            ps.setString(2, cnt.getSend_id());
            ps.setString(3, cnt.getRecv_id());
            
            int s = ps.executeUpdate();
            if (s == 1) {
                System.out.println("request sent by "+cnt.getSend_id());
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

}
