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
public class Skill {
    private String skill_id;
    private String skill_name;
    private String skill_link;

    public Skill(String skill_id, String skill_name, String skill_link) {
        this.skill_id = skill_id;
        this.skill_name = skill_name;
        this.skill_link = skill_link;
    }

    public String getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(String skill_id) {
        this.skill_id = skill_id;
    }

    public String getSkill_name() {
        return skill_name;
    }

    public void setSkill_name(String skill_name) {
        this.skill_name = skill_name;
    }

    public String getSkill_link() {
        return skill_link;
    }

    public void setSkill_link(String skill_link) {
        this.skill_link = skill_link;
    }
    
}
