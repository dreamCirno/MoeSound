package com.moe.dao;

import com.moe.entity.Discuss;

import java.util.List;

public interface DiscussDao {
    /**
     * 添加评论
     *
     * @param musicId
     * @param userId
     * @param content
     * @return
     */
    public boolean insertComment(int musicId, int userId, String content);

    /**
     * 查找歌曲评论
     *
     * @param musicId
     * @return
     */
    public List<Discuss> selectComment(int musicId);

    /**
     * 删除评论
     *
     * @param discuss
     * @return
     */
    public boolean deleteComment(Discuss discuss);
}
