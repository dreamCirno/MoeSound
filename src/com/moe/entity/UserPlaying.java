package com.moe.entity;

import java.sql.Timestamp;

public class UserPlaying implements java.io.Serializable {
    private int userId;
    private int musicId;
    private Timestamp playTime;

    public UserPlaying() {
        super();
    }

    public UserPlaying(int userId, int musicId) {
        this.userId = userId;
        this.musicId = musicId;
    }

    public UserPlaying(int userId, int musicId, Timestamp playTime) {
        this.userId = userId;
        this.musicId = musicId;
        this.playTime = playTime;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMusicId() {
        return musicId;
    }

    public void setMusicId(int musicId) {
        this.musicId = musicId;
    }

    public Timestamp getPlayTime() {
        return playTime;
    }

    public void setPlayTime(Timestamp playTime) {
        this.playTime = playTime;
    }
}
