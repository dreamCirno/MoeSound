package com.moe.impl;

import com.moe.dao.UserBanDao;
import com.moe.entity.UserBan;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.Timestamp;


public class UserBanImpl implements UserBanDao {
    @Override
    public boolean insertBan(UserBan userBan) {
        try {
            String sql = "INSERT INTO userBan (userId,dayCount) VALUES(?,?)";
            int result = DBUtils.doUpdate(sql, userBan.getUserId(), userBan.getDayCount());
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
    public boolean checkUserBan(int userId) {
        boolean allow = true;
        UserBan userBan;
        try {
            String sql = "SELECT userId,startDate,dayCount FROM userBan WHERE userId = ?";
            ResultSet rs = DBUtils.doQuery(sql, userId);
            while (rs.next()) {
                if (new UserBan(rs.getInt(1), rs.getTimestamp(2), rs.getInt(3)).getEndTime().getTime() - new Timestamp(System.currentTimeMillis()).getTime() > 0) {
                    allow = false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return allow;
    }

    @Override
    public boolean deleteUserBan(int userId) {
        try {
            String sql = "DELETE FROM userBan WHERE userId = ?";
            int result = DBUtils.doUpdate(sql, userId);
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
