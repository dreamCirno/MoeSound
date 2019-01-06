package com.moe.impl;

import com.moe.dao.MusicDao;
import com.moe.entity.Music;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MusicDaoImpl implements MusicDao {
    @Override
    public boolean insertMusic(Music music) {
        try {
            String sql = "INSERT INTO music (classifyId,musicName,singer,duration,imagePath,path) VALUES (?,?,?,?,?,?)";
            int result = DBUtils.doUpdate(sql, music.getClassifyId(), music.getName(), music.getSinger(), music.getDuration(), music.getImagePath(), music.getPath());
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
    public int selectIdByPath(String path) {
        try {
            String sql = "SELECT musicId FROM music WHERE path = ?";
            ResultSet rs = DBUtils.doQuery(sql, path);
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return -1;
    }

    @Override
    public List<Music> selectRandomList(int count) {
        List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT * FROM music ORDER BY RAND() LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, count);
            while (rs.next()) {
                list.add(new Music(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public List<Music> selectLastedList(int count) {
        List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT music.MusicID,ClassifyID,MusicName,Singer,Duration,ImagePath,Path FROM music INNER JOIN upload ON music.MusicID = upload.MusicID" +
                    "ORDER BY UploadTime DESC LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, count);
            while (rs.next()) {
                list.add(new Music(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }
}
