package com.moe.dao;

import com.moe.entity.List;
import com.moe.entity.ListConnect;
import com.moe.entity.Music;

public interface ListDao {

    /**
     * 新增歌单
     *
     * @param list
     * @return
     */
    public boolean insertList(List list);

    /**
     * 收藏音乐
     *
     * @param listConnect
     * @return
     */
    public boolean insertMusic(ListConnect listConnect);

    /**
     * 获取歌单音乐列表
     *
     * @param id
     * @return
     */
    public java.util.List<Music> selectList(int id);

    /**
     * 通过用户ID获取我喜欢的音乐歌单ID
     *
     * @param userId
     * @return
     */
    public int selectIdByUserId(int userId);

    /**
     * 通过歌单ID获取信息
     *
     * @param id
     * @return
     */
    public List selectListById(int id);

    /**
     * 随机获取count个歌单
     *
     * @param count
     * @return
     */
    public java.util.List<List> selectRandomList(int count);

    /**
     * 获取用户创建的歌单列表
     * @param userId
     * @return
     */
    public java.util.List<List> selectListByUserId(int userId);
}
