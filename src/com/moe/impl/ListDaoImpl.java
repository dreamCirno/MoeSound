package com.moe.impl;

import com.moe.dao.ListDao;
import com.moe.entity.List;
import com.moe.utils.DBUtils;

public class ListDaoImpl implements ListDao {
    @Override
    public boolean insertList(List list) {
        try {
            String sql = "INSERT INTO list (userid,listname) VALUES (?,?)";
            int result = DBUtils.doUpdate(sql, list.getUserId(), list.getName());
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return false;
    }
}
