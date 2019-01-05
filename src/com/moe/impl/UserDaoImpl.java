package com.moe.impl;

import com.moe.dao.UserDao;
import com.moe.entity.Question;
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
            String sql = "INSERT INTO user (username,password,sex,head,grade,question,answer) VALUES (?,?,?,?,?,?,?)";
            int result = DBUtils.doUpdate(sql, user.getUsername(), user.getPassword(), user.getSex(), user.getHead(), user.getGrade(), user.getQuestion().getQuestion(), user.getQuestion().getAnswer());
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

    @Override
    public Question getQuestion(String username) {
        try {
            String sql = "SELECT question,answer count FROM user WHERE username = ?";
            ResultSet rs = DBUtils.doQuery(sql, username);
            while (rs.next()) {
                return new Question(rs.getString(1), rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return null;
    }

    @Override
    public boolean validateQuestion(User user) {
        try {
            String sql = "SELECT COUNT(*) count FROM user WHERE username = ? AND answer = ?";
            ResultSet rs = DBUtils.doQuery(sql, user.getUsername(), user.getQuestion().getAnswer());
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
    public boolean changePassword(User user) {
        try {
            String sql = "UPDATE user SET password = ? WHERE username = ?";
            int result = DBUtils.doUpdate(sql, user.getPassword(), user.getUsername());
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

    @Override
    public boolean containUsername(String username) {
        try {
            String sql = "SELECT COUNT(*) count FROM user WHERE username = ?";
            ResultSet rs = DBUtils.doQuery(sql, username);
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
}