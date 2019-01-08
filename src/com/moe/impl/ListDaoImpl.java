package com.moe.impl;

import com.moe.dao.ListDao;
import com.moe.entity.List;
import com.moe.entity.ListConnect;
import com.moe.entity.Music;
import com.moe.factory.Factory;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.util.ArrayList;

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

    @Override
    public boolean insertMusic(ListConnect listConnect) {
        try {
            String sql = "INSERT INTO listconnect (musicId,listId) VALUES (?,?)";
            int result = DBUtils.doUpdate(sql, listConnect.getMusicId(), listConnect.getListId());
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
    public java.util.List<Music> selectList(int id) {
        java.util.List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT * FROM music WHERE MusicID IN (SELECT MusicID FROM listconnect WHERE ListID = ?)";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                list.add(new Music(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getTimestamp(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public int selectIdByUserId(int userId) {
        int id = -1;
        try {
            String sql = "SELECT ListID FROM list WHERE UserID = ?";
            ResultSet rs = DBUtils.doQuery(sql, userId);
            while (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return id;
    }

    @Override
    public List selectListById(int id) {
        List list = null;
        String owner = "";
        String name = "";
        try {
            String sql = "SELECT * FROM list WHERE listid = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                if (rs.getString(3).equals("我喜欢的音乐")) {
                    owner = Factory.getUserDaoInstance().selectUsernameById(rs.getInt(2));
                    name = rs.getString(3).substring(1, 6);
                    name = owner + name;
                } else {
                    name = rs.getString(3);
                }
                list = new List(rs.getInt(1), rs.getInt(2), name, rs.getTimestamp(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public java.util.List<List> selectRandomList(int count) {
        java.util.List<List> list = new ArrayList<List>();
        String owner = "";
        String name = "";
        try {
            String sql = "SELECT list.ListID,UserID,ListName,COUNT(*) FROM list INNER JOIN listconnect ON list.ListID = listconnect.ListID GROUP BY list.ListID ORDER BY RAND() LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, count);
            while (rs.next()) {
                if (rs.getString(3).equals("我喜欢的音乐")) {
                    owner = Factory.getUserDaoInstance().selectUsernameById(rs.getInt(2));
                    name = rs.getString(3).substring(1, 6);
                    name = owner + name;
                } else {
                    name = rs.getString(3);
                }
                list.add(new List(rs.getInt(1), rs.getInt(2), name, rs.getInt(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public java.util.List<List> selectListByUserId(int userId) {
        java.util.List<List> list = new ArrayList<List>();
        try {
            String sql = "SELECT * FROM list WHERE UserID = ?";
            ResultSet rs = DBUtils.doQuery(sql, userId);
            while (rs.next()) {
                list.add(new List(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getTimestamp(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }
}
