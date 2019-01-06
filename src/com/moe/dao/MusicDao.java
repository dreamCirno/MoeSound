package com.moe.dao;

import com.moe.entity.Music;

import java.util.List;

public interface MusicDao {
    /**
     * 添加歌曲
     * @param music
     * @return
     */
    public boolean insertMusic(Music music);

    /**
     * 通过音乐存储路径查找音乐ID
     * @param path
     * @return
     */
    public int selectIdByPath(String path);

    /**
     * 随机查询生成音乐列表
     * @return
     */
    public List<Music> selectRandomList(int count);

    /**
     * 随机查询最新更新列表
     * @param count
     * @return
     */
    public List<Music> selectLastedList(int count);
}
