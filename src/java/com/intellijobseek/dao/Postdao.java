package com.intellijobseek.dao;

import com.intellijobseek.entities.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Postdao {
    private Connection con;
    
    public Postdao(Connection con) {
        this.con = con;
    }
//    save post to database
    public boolean savePost(Post post) {
        try {
            //Post ----------> database
            String query = "insert into post(post_id, post_text, post_topic, post_img,user_id) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, post.getPost_id());
            ps.setString(2, post.getPost_text());
            ps.setString(3, post.getPost_topic());
            ps.setString(4, post.getPost_img());
            ps.setString(5, post.getUser_id());
            int s = ps.executeUpdate();
            if (s == 1)
            {
                System.out.println("post "+post.getUser_id()+" saved");
                return true;
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return false;
    }
}
