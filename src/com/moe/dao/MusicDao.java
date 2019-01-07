package com.moe.dao;

import com.moe.entity.Music;

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
     * @param count
     * @return
     */
    public List<Music> selectWeekTop(int count);
}
