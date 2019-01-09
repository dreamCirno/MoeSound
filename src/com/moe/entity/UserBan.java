package com.moe.entity;

import java.sql.Timestamp;

public class UserBan implements java.io.Serializable {
    private int userId;
    private Timestamp endDate;

    public UserBan() {
        super();
    }

    public UserBan(int userId, Timestamp endDate) {
        this.userId = userId;
        this.endDate = endDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Timestamp getEndDate() {
        return endDate;
    }

    public void setEndDate(Timestamp endDate) {
        this.endDate = endDate;
    }
}
