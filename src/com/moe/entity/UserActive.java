package com.moe.entity;

import java.sql.Timestamp;

public class UserActive implements java.io.Serializable {
    private String username;
    private String musicName;
    private Timestamp playTime;
    private int musicId;

    public UserActive() {
        super();
    }

    public UserActive(String username, String musicName, Timestamp playTime, int musicId) {
        this.username = username;
        this.musicName = musicName;
        this.playTime = playTime;
        this.musicId = musicId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMusicName() {
        return musicName;
    }

    public void setMusicName(String musicName) {
        this.musicName = musicName;
    }

    public Timestamp getPlayTime() {
        return playTime;
    }

    public void setPlayTime(Timestamp playTime) {
        this.playTime = playTime;
    }

    public int getMusicId() {
        return musicId;
    }

    public void setMusicId(int musicId) {
        this.musicId = musicId;
    }

    public String getTimeDifference(Timestamp formatTime) {
        String str = "";
        long t1 = 0;
        long t2 = 0;
        t1 = formatTime.getTime();
        t2 = new Timestamp(System.currentTimeMillis()).getTime();
        //因为t1/t2都是时间戳都是毫秒为单位，所以需要格式化他们的时间
        int day = (int) ((t2 - t1) / 1000 / 60 / 60 / 24);
        int hours = (int) ((t2 - t1) / (1000 * 60 * 60));
        int minutes = (int) (((t2 - t1) / 1000 - hours * (60 * 60)) / 60);
        int second = (int) ((t2 - t1) / 1000 - hours * (60 * 60) - minutes * 60);
        if (day > 0) {
            str = day + "天";
        } else {
            if (hours > 0) {
                str = hours + "小时";
            } else {
                if (minutes > 0) {
                    str = minutes + "分";
                } else {
                    if (second > 0) {
                        str = second + "秒";
                    }
                }
            }
        }
        return str;
    }
}
