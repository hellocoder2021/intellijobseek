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
public class Vacancy {
    private String org_id;
    private String v_post;
    private int v_count;
    private String v_demand;

    public String getOrg_id() {
        return org_id;
    }

    public void setOrg_id(String org_id) {
        this.org_id = org_id;
    }

    public String getV_post() {
        return v_post;
    }

    public void setV_post(String v_post) {
        this.v_post = v_post;
    }

    public int getV_count() {
        return v_count;
    }

    public void setV_count(int v_count) {
        this.v_count = v_count;
    }

    public String getV_demand() {
        return v_demand;
    }

    public void setV_demand(String v_demand) {
        this.v_demand = v_demand;
    }

    public String getV_position() {
        return v_position;
    }

    public void setV_position(String v_position) {
        this.v_position = v_position;
    }

    public Vacancy(String org_id, String v_post, int v_count, String v_demand, String v_position) {
        this.org_id = org_id;
        this.v_post = v_post;
        this.v_count = v_count;
        this.v_demand = v_demand;
        this.v_position = v_position;
    }
    String v_position;
    
}
