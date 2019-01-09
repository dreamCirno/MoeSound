package com.moe.entity;

import com.moe.factory.Factory;

import java.sql.Timestamp;

public class Discuss implements java.io.Serializable {
    private int musicId;
    private int userId;
    private String content;
    private Timestamp publishTime;
    private String username;

    public Discuss() {
        super();
    }

    public Discuss(int musicId, int userId, String content) {
        this.musicId = musicId;
        this.userId = userId;
        this.content = content;
    }

    public Discuss(int musicId, int userId, Timestamp publishTime) {
        this.musicId = musicId;
        this.userId = userId;
        this.publishTime = publishTime;
    }

    public Discuss(String username, String content, Timestamp publishTime) {
        this.username = username;
        this.content = content;
        this.publishTime = publishTime;
    }

    public int getMusicId() {
        return musicId;
    }

    public void setMusicId(int musicId) {
        this.musicId = musicId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Timestamp publishTime) {
        this.publishTime = publishTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getUserIdByUsername(String username) {
        return Factory.getUserDaoInstance().selectIdByUsername(username);
    }

    @Override
    public String toString() {
        return "Discuss{" +
                "musicId=" + musicId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", publishTime=" + publishTime +
                ", username='" + username + '\'' +
                '}';
    }
}
