package com.moe.impl;

import com.moe.dao.ClassifyDao;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;

public class ClassifyDaoImpl implements ClassifyDao {
    @Override
    public String selectNameById(int id) {
        String result = "";
        try {
            String sql = "SELECT classifyName FROM classify WHERE ClassifyID = ? ";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                result = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return result;
    }
}
