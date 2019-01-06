package com.moe.entity;

public class Music implements java.io.Serializable {
    private int id;
    private int classifyId;
    private String name;
    private String singer;
    private int duration;
    private String imagePath;
    private String path;

    public Music() {
        super();
    }

    public Music(int classifyId, String name, String singer, int duration, String imagePath, String path) {
        this.classifyId = classifyId;
        this.name = name;
        this.singer = singer;
        this.duration = duration;
        this.imagePath = imagePath;
        this.path = path;
    }

    public Music(int id, int classifyId, String name, String singer, int duration, String imagePath, String path) {
        this.id = id;
        this.classifyId = classifyId;
        this.name = name;
        this.singer = singer;
        this.duration = duration;
        this.imagePath = imagePath;
        this.path = path;
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
