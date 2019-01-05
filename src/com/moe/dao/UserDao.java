package com.moe.dao;

import com.moe.entity.Question;
import com.moe.entity.User;

public interface UserDao {
    /**
     * 登录
     * @param user
     * @return
     */
    public boolean login(User user);

    /**
     * 注册
     * @param user
     * @return
     */
    public boolean register(User user);

    /**
     * 通过用户名获取密保问题和正确答案
     * @param username
     * @return
     */
    public Question getQuestion(String username);

    /**
     * 验证密保问题
     * @param user
     * @return
     */
    public boolean validateQuestion(User user);

    /**
     * 修改密码
     * @param user
     * @return
     */
    public boolean changePassword(User user);

    /**
     * 查询重复用户名
     * @param username
     * @return
     */
    public boolean containUsername(String username);
}
