package com.moe.entity;

import java.sql.Timestamp;

public class Music implements java.io.Serializable {
    private int id;
    private int classifyId;
    private String name;
    private String singer;
    private int duration;
    private String imagePath;
    private String path;
    private int userId;
    private Timestamp uploadTime;

    public Music() {
        super();
    }

    public Music(int classifyId, String name, String singer, int duration, String imagePath, String path, int userId) {
        this.classifyId = classifyId;
        this.name = name;
        this.singer = singer;
        this.duration = duration;
        this.imagePath = imagePath;
        this.path = path;
        this.userId = userId;
    }

    public Music(int id, int classifyId, String name, String singer, int duration, String imagePath, String path, int userId, Timestamp uploadTime) {
        this.id = id;
        this.classifyId = classifyId;
        this.name = name;
        this.singer = singer;
        this.duration = duration;
        this.imagePath = imagePath;
        this.path = path;
        this.userId = userId;
        this.uploadTime = uploadTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(int classifyId) {
        this.classifyId = classifyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
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

    public String getTimeString(int duration) {
        String str = "";
        if (duration / 60 < 10) {
            str += "0" + duration / 60;
        } else {
            str += "" + duration / 60;
        }
        str += ":";
        if (duration % 60 < 10) {
            str += "0" + duration % 60;
        } else {
            str += "" + duration % 60;
        }
        return str;
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

    @Override
    public String toString() {
        return "Music{" +
                "id=" + id +
                ", classifyId=" + classifyId +
                ", name='" + name + '\'' +
                ", singer='" + singer + '\'' +
                ", duration=" + duration +
                ", imagePath='" + imagePath + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}
