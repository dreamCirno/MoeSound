package com.moe.dao;

import com.moe.entity.UserPlaying;

import java.util.List;

public interface UserPlayingDao {
    /**
     * 获取最新全站用户动态
     * @param count
     * @return
     */
    public List<UserPlaying> selectLastedPlaying(int count);
}
