package com.moe.dao;

import com.moe.entity.UserBan;

public interface UserBanDao {
    /**
     * 添加封禁信息
     *
     * @param userBan
     * @return
     */
    public boolean insertBan(UserBan userBan);

    /**
     * 查询封禁信息
     *
     * @param userId
     * @return
     */
    public boolean checkUserBan(int userId);

    /**
     * 解除封禁信息
     *
     * @param userId
     * @return
     */
    public boolean deleteUserBan(int userId);
}
