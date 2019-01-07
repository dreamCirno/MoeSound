package com.moe.impl;

import com.moe.dao.DiscussDao;
import com.moe.entity.Discuss;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DiscussDaoImpl implements DiscussDao {
    @Override
    public boolean insertComment(int musicId, int userId, String content) {
        try {
            String sql = "INSERT INTO discuss (musicId,userId,content) VALUES (?,?,?)";
            int result = DBUtils.doUpdate(sql, musicId, userId, content);
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
    public List<Discuss> selectComment(int musicId) {
        List<Discuss> list = new ArrayList<Discuss>();
        try {
            String sql = "SELECT Username,Content,PublishTime FROM discuss INNER JOIN `user` ON discuss.UserID = `user`.UserID WHERE MusicID = ? ORDER BY PublishTime DESC";
            ResultSet rs = DBUtils.doQuery(sql, musicId);
            while (rs.next()) {
                list.add(new Discuss(rs.getString(1), rs.getString(2), rs.getTimestamp(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }
}
