package com.moe.entity;

import java.sql.Timestamp;

public class List implements java.io.Serializable {
    private int id;
    private int userId;
    private String name;
    private Timestamp createTime;

    public List() {
        super();
    }

    // 新增歌单
    public List(int userId, String name) {
        this.userId = userId;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }
}
