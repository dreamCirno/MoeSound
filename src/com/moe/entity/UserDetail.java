package com.moe.entity;

import java.sql.Timestamp;
import java.util.List;

public class UserDetail implements java.io.Serializable {
    private int userId;
    private String username;
    private int createListCount;
    private Timestamp registerTime;
    private Timestamp lastTime;
    private int uploadCount;
    private List<com.moe.entity.List> list;
    private List<UserActive> userActives;

    public UserDetail() {
        super();
    }

    public UserDetail(int userId, String username, int createListCount, Timestamp registerTime, Timestamp lastTime, int uploadCount, List<com.moe.entity.List> list, List<UserActive> userActives) {
        this.userId = userId;
        this.username = username;
        this.createListCount = createListCount;
        this.registerTime = registerTime;
        this.lastTime = lastTime;
        this.uploadCount = uploadCount;
        this.list = list;
        this.userActives = userActives;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getCreateListCount() {
        return createListCount;
    }

    public void setCreateListCount(int createListCount) {
        this.createListCount = createListCount;
    }

    public Timestamp getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Timestamp registerTime) {
        this.registerTime = registerTime;
    }

    public Timestamp getLastTime() {
        return lastTime;
    }

    public void setLastTime(Timestamp lastTime) {
        this.lastTime = lastTime;
    }

    public int getUploadCount() {
        return uploadCount;
    }

    public void setUploadCount(int uploadCount) {
        this.uploadCount = uploadCount;
    }

    public List<com.moe.entity.List> getList() {
        return list;
    }

    public void setList(List<com.moe.entity.List> list) {
        this.list = list;
    }

    public List<UserActive> getUserActives() {
        return userActives;
    }

    public void setUserActives(List<UserActive> userActives) {
        this.userActives = userActives;
    }
}
