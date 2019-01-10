package com.moe.entity;

import java.sql.Timestamp;

public class UserBan implements java.io.Serializable {
    private int userId;
    private Timestamp startDate;
    private int dayCount;

    public UserBan() {
        super();
    }

    public UserBan(int userId, int dayCount) {
        this.userId = userId;
        this.dayCount = dayCount;
    }

    public UserBan(int userId, Timestamp startDate, int dayCount) {
        this.userId = userId;
        this.startDate = startDate;
        this.dayCount = dayCount;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Timestamp getStartDate() {
        return startDate;
    }

    public void setStartDate() {
        this.startDate = new Timestamp(System.currentTimeMillis());
    }

    public int getDayCount() {
        return dayCount;
    }

    public void setDayCount(int dayCount) {
        this.dayCount = dayCount;
    }

    public Timestamp getEndTime()
    {
        long time = getStartDate().getTime() + getDayCount() * 24 * 60 * 60 * 1000;
        return new Timestamp(time);
    }
}
