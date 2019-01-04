package com.moe.impl;

import com.moe.dao.UserDao;
import com.moe.entity.User;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;

public class UserDaoImpl implements UserDao {

    @Override
    public boolean login(User user) {
        try {
            String sql = "SELECT COUNT(*) count FROM user WHERE username = ? AND password = ?";
            ResultSet rs = DBUtils.doQuery(sql, user.getUsername(), user.getPassword());
            while (rs.next()) {
                if (rs.getInt(1) > 0)
                    return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return false;
    }

    @Override
    public boolean register(User user) {
        try {
            String sql = "INSERT INTO user (username,password,sex,head,grade) VALUES (?,?,?,?,?)";
            int result = DBUtils.doUpdate(sql, user.getUsername(), user.getPassword(), user.getSex(), user.getHead(), user.getGrade());
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