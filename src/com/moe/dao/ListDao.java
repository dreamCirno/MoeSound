package com.moe.dao;

import com.moe.entity.List;

public interface ListDao {

    /**
     * 新增歌单
     * @param list
     * @return
     */
    public boolean insertList(List list);
}
