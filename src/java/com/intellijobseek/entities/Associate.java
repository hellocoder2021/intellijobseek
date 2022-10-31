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
public class Associate {
    private String skill_id;
    private String org_id;
    private String link;

    public String getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(String skill_id) {
        this.skill_id = skill_id;
    }

    public String getOrg_id() {
        return org_id;
    }

    public void setOrg_id(String org_id) {
        this.org_id = org_id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Associate(String skill_id, String org_id, String link) {
        this.skill_id = skill_id;
        this.org_id = org_id;
        this.link = link;
    }
    
}
