package com.moe.dao;

public interface ClassifyDao {
    /**
     * 通过分类ID查找分类名称
     *
     * @param id
     * @return
     */
    public String selectNameById(int id);
}
