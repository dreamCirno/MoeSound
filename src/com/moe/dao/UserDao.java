package com.moe.dao;

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
}
