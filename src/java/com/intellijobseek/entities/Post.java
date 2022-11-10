package com.intellijobseek.entities;
public class Post {
    
    private String post_id;
    private String post_text;
    private String post_topic;
    private String post_img;
    private String user_id;
    private int post_likes;
    private int post_shares;

    public Post(String post_id, String post_text, String post_topic, String post_img, String user_id, int post_likes, int post_shares) {
        this.post_id = post_id;
        this.post_text = post_text;
        this.post_topic = post_topic;
        this.post_img = post_img;
        this.user_id = user_id;
        this.post_likes = post_likes;
        this.post_shares = post_shares;
    }

    public Post(String post_id, String post_text, String post_topic, String post_img, String user_id) {
        this.post_id = post_id;
        this.post_text = post_text;
        this.post_topic = post_topic;
        this.post_img = post_img;
        this.user_id = user_id;
    }
    
    

    public int getPost_likes() {
        return post_likes;
    }

    public void setPost_likes(int post_likes) {
        this.post_likes = post_likes;
    }

    public int getPost_shares() {
        return post_shares;
    }

    public void setPost_shares(int post_shares) {
        this.post_shares = post_shares;
    }
    
    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
  
    public String getPost_id() {
        return post_id;
    }

    public void setPost_id(String post_id) {
        this.post_id = post_id;
    }

    public String getPost_text() {
        return post_text;
    }

    public void setPost_text(String post_text) {
        this.post_text = post_text;
    }

    public String getPost_topic() {
        return post_topic;
    }

    public void setPost_topic(String post_topic) {
        this.post_topic = post_topic;
    }

    public String getPost_img() {
        return post_img;
    }

    public void setPost_img(String post_img) {
        this.post_img = post_img;
    }
    
}
