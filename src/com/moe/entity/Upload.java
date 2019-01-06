package com.moe.entity;

import java.sql.Timestamp;

/**
 * 上传歌曲信息表
 */
public class Upload implements java.io.Serializable {
    private int musicId;
    private int userId;
    private Timestamp uploadTime;

    public Upload() {
        super();
    }

    public Upload(int musicId, int userId) {
        this.musicId = musicId;
        this.userId = userId;
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

    public Timestamp getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Timestamp uploadTime) {
        this.uploadTime = uploadTime;
    }
}
