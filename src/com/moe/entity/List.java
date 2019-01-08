package com.moe.entity;

import java.sql.Timestamp;

public class List implements java.io.Serializable {
    private int id;
    private int userId;
    private String name;
    private Timestamp createTime;
    private int count;
    private java.util.List<ListConnect> list;

    public List() {
        super();
    }

    // 新增歌单
    public List(int userId, String name) {
        this.userId = userId;
        this.name = name;
    }

    // 获取歌单信息
    public List(int id, int userId, String name, Timestamp createTime) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.createTime = createTime;
    }

    // 获取歌单信息
    public List(int id, int userId, String name, int count) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.count = count;
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

    public java.util.List<ListConnect> getList() {
        return list;
    }

    public void setList(java.util.List<ListConnect> list) {
        this.list = list;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getSuitableName(String username) {
        String name = "";
        if (name.equals("我喜欢的音乐")) {
            name = name.substring(1, 6);
            name = username + name;
        }
        return name;
    }
}
