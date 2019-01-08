package com.moe.dao;

import com.moe.entity.Music;
import com.moe.entity.UserActive;

import java.util.List;

public interface MusicDao {
    /**
     * 添加歌曲
     *
     * @param music
     * @return
     */
    public boolean insertMusic(Music music);

    /**
     * 通过音乐存储路径查找音乐ID
     *
     * @param path
     * @return
     */
    public int selectIdByPath(String path);

    /**
     * 随机查询生成音乐列表
     *
     * @return
     */
    public List<Music> selectRandomList(int count);

    /**
     * 随机查询最新更新列表
     *
     * @param count
     * @return
     */
    public List<Music> selectLastedList(int count);

    /**
     * 查询歌曲信息
     *
     * @param id
     * @return
     */
    public Music selectMusic(int id);

    /**
     * 通过关键词搜索
     *
     * @param keyword
     * @return
     */
    public List<Music> selectListByKeyword(String keyword, int page, int count);

    /**
     * 通过关键词搜索获取条数
     *
     * @param keyword
     * @return
     */
    public int selectCountByKeyword(String keyword);

    /**
     * 获取一周TOP榜
     *
     * @param count
     * @return
     */
    public List<Music> selectWeekTop(int count);

    /**
     * 更新歌曲播放量
     *
     * @param id
     * @return
     */
    public boolean updatePlayCount(int id);

    /**
     * 更新歌曲播放量
     *
     * @param id
     * @param userId
     * @return
     */
    public boolean updatePlayCount(int id, int userId);

    /**
     * 获取全站动态
     *
     * @param count
     * @return
     */
    public List<UserActive> selectUserActive(int count);

    /**
     * 通过分类获取列表
     *
     * @param sort
     * @param page
     * @param count
     * @return
     */
    public List<Music> selectListByClassify(int sort, int page, int count);

    /**
     * 通过分类查找歌曲量
     *
     * @param sort
     * @return
     */
    public int selectCountByClassify(int sort);

    /**
     * 获取一周上传量
     *
     * @return
     */
    public int selectWeekCount();

    /**
     * 获取已收录歌曲量
     *
     * @return
     */
    public int selectTotalCount();

    /**
     * 查询注册用户在该歌曲的播放量
     *
     * @param id
     * @return
     */
    public int selectUserPlayCount(int id);

    /**
     * 查询非注册用户在该歌曲的播放量
     *
     * @param id
     * @return
     */
    public int selectGuestPlayCount(int id);

    /**
     * 根据用户ID获取用户听歌动态
     *
     * @param userId
     * @param limit
     * @return
     */
    public List<UserActive> selectUserActiveByUserId(int userId, int limit);
}
