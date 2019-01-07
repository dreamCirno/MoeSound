package com.moe.impl;

import com.moe.dao.UserPlayingDao;
import com.moe.entity.UserPlaying;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserPlayingDaoImpl implements UserPlayingDao {
    @Override
    public List<UserPlaying> selectLastedPlaying(int count) {
        List<UserPlaying> list = new ArrayList<UserPlaying>();
        try {
            String sql = "SELECT MusicID,COUNT(MusicID) FROM yplaymusic GROUP BY MusicID ORDER BY COUNT(MusicID) DESC LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, count);
            while (rs.next()) {
                list.add(new UserPlaying(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }
}
