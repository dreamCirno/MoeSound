package com.moe.entity;

import java.sql.Timestamp;

public class User implements java.io.Serializable {
    private int id;
    private String username;
    private String password;
    private int sex;
    private String head;
    private Timestamp registerTime;
    private int grade;

    public User() {
    }

    // 登录
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // 注册
    public User(String username, String password, int sex, String head, int grade) {
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.head = head;
        this.grade = grade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public Timestamp getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Timestamp registerTime) {
        this.registerTime = registerTime;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }
}
