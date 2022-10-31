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
public class User_skill {
    private String user_id;
    private String skill_id;
    int endorsement;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(String skill_id) {
        this.skill_id = skill_id;
    }

    public int getEndorsement() {
        return endorsement;
    }

    public void setEndorsement(int endorsement) {
        this.endorsement = endorsement;
    }

    public User_skill(String user_id, String skill_id, int endorsement) {
        this.user_id = user_id;
        this.skill_id = skill_id;
        this.endorsement = endorsement;
    }
}
