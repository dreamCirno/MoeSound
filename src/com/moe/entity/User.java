package com.moe.entity;

import com.moe.factory.Factory;

import java.sql.Time;
import java.sql.Timestamp;

public class User implements java.io.Serializable {
    private int id;
    private String username;
    private String password;
    private int sex;
    private String head;
    private Timestamp registerTime;
    private int grade;
    private Question question;

    public User() {
        super();
    }

    // 登录
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // 修改密码
    public User(int id, String password) {
        this.id = id;
        this.password = password;
    }

    // 用户上传歌曲历史信息
    public User(String username, Timestamp uploadTime) {
        this.username = username;
        this.registerTime = uploadTime;
    }

    // 验证密保问题
    public User(String username, Question question) {
        this.username = username;
        this.question = question;
    }

    // 修改信息
    public User(String username, int sex, Question question) {
        this.username = username;
        this.sex = sex;
        this.question = question;
    }

    // 注册
    public User(String username, String password, int sex, String head, int grade, Question question) {
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.head = head;
        this.grade = grade;
        this.question = question;
    }

    // 存放Session
    public User(int userId, String username, int sex, int grade) {
        this.username = username;
        this.id = userId;
        this.sex = sex;
        this.grade = grade;
    }

    // 更改用户信息
    public User(int userId, String username, int sex, String password) {
        this.id = userId;
        this.username = username;
        this.sex = sex;
        this.password = password;
    }

    // 管理员用户信息
    public User(int userId, String username, int sex, int grade, Timestamp registerTime) {
        this.id = userId;
        this.username = username;
        this.sex = sex;
        this.grade = grade;
        this.registerTime = registerTime;
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

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
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
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", sex=" + sex +
                ", head='" + head + '\'' +
                ", registerTime=" + registerTime +
                ", grade=" + grade +
                ", question=" + question +
                '}';
    }

}
