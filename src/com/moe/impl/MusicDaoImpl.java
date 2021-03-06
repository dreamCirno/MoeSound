package com.moe.impl;

import com.moe.dao.MusicDao;
import com.moe.entity.Music;
import com.moe.entity.UserActive;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class MusicDaoImpl implements MusicDao {
    @Override
    public boolean insertMusic(Music music) {
        try {
            String sql = "INSERT INTO music (classifyId,musicName,singer,duration,imagePath,path,userId) VALUES (?,?,?,?,?,?,?)";
            int result = DBUtils.doUpdate(sql, music.getClassifyId(), music.getName(), music.getSinger(), new Random().nextInt(300) % (300 - 120 + 1) + 120, music.getImagePath(), music.getPath(), music.getUserId());
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
    public List<Music> selectLastedList(int count) {
        List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT MusicID,ClassifyID,MusicName,Singer,Duration,ImagePath,Path,UserID,UploadTime FROM music ORDER BY UploadTime DESC LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, count);
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
    public Music selectMusic(int id) {
        try {
            String sql = "SELECT * FROM music WHERE musicId = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                return new Music(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getTimestamp(9));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return null;
    }

    @Override
    public List<Music> selectListByKeyword(String keyword, int page, int count) {
        List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT * FROM music WHERE MusicName LIKE '%" + keyword + "%' OR Singer LIKE '%" + keyword + "%' LIMIT " + (page - 1) * count + "," + count;
            ResultSet rs = DBUtils.doQuery(sql);
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
    public int selectCountByKeyword(String keyword) {
        try {
            String sql = "SELECT COUNT(*) FROM music WHERE MusicName LIKE '%" + keyword + "%' OR Singer LIKE '%" + keyword + "%'";
            ResultSet rs = DBUtils.doQuery(sql);
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
    public List<Music> selectWeekTop(int count) {
        List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT music.MusicID,ClassifyID,MusicName,Singer,Duration,ImagePath,Path,yplaymusic.UserID,UploadTime FROM music INNER JOIN yplaymusic ON music.MusicID = yplaymusic.MusicID where DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= date(PlayTime) GROUP BY MusicID LIMIT " + count;
            ResultSet rs = DBUtils.doQuery(sql);
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
    public boolean updatePlayCount(int id) {
        try {
            String sql = "SELECT COUNT(*) FROM nplaymusic WHERE musicId = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                if (rs.getInt(1) > 0) {
                    sql = "UPDATE nplaymusic SET count = count + 1 WHERE musicId = ? ";
                    int result = DBUtils.doUpdate(sql, id);
                    if (result > 0) {
                        return true;
                    }
                } else {
                    sql = "INSERT INTO nplaymusic VALUES(?,1)";
                    int result = DBUtils.doUpdate(sql, id);
                    if (result > 0) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return false;
    }

    @Override
    public boolean updatePlayCount(int id, int userId) {
        try {
            String sql = "INSERT INTO yplaymusic (userid,MusicID) VALUES (?,?)";
            int result = DBUtils.doUpdate(sql, userId, id);
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
    public List<UserActive> selectUserActive(int count) {
        List<UserActive> list = new ArrayList<UserActive>();
        try {
            String sql = "SELECT UserName,MusicName,PlayTime,yplaymusic.musicId FROM yplaymusic INNER JOIN `user` ON yplaymusic.UserID = `user`.UserID INNER JOIN music ON yplaymusic.MusicID = music.MusicID ORDER BY PlayTime DESC LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, count);
            while (rs.next()) {
                list.add(new UserActive(rs.getString(1), rs.getString(2), rs.getTimestamp(3), rs.getInt(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public List<Music> selectListByClassify(int sort, int page, int count) {
        List<Music> list = new ArrayList<Music>();
        try {
            String sql = "SELECT * FROM music WHERE ClassifyID = ? " + "LIMIT " + (page - 1) * count + "," + count;
            ResultSet rs = DBUtils.doQuery(sql, sort);
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
    public int selectCountByClassify(int sort) {
        int count = -1;
        try {
            String sql = "SELECT COUNT(*) FROM music WHERE ClassifyID = ? ";
            ResultSet rs = DBUtils.doQuery(sql, sort);
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return count;
    }

    @Override
    public int selectWeekCount() {
        int count = -1;
        try {
            String sql = "SELECT COUNT(*) FROM music where DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= date(UploadTime)";
            ResultSet rs = DBUtils.doQuery(sql);
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return count;
    }

    @Override
    public int selectTotalCount() {
        int count = -1;
        try {
            String sql = "SELECT COUNT(*) FROM music";
            ResultSet rs = DBUtils.doQuery(sql);
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return count;
    }

    @Override
    public int selectUserPlayCount(int id) {
        int count = 0;
        try {
            String sql = "SELECT COUNT(*) FROM yplaymusic WHERE MusicID = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return count;
    }

    @Override
    public int selectGuestPlayCount(int id) {
        int count = 0;
        try {
            String sql = "SELECT count FROM nplaymusic WHERE musicID= ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return count;
    }

    @Override
    public List<UserActive> selectUserActiveByUserId(int userId, int limit) {
        List<UserActive> list = new ArrayList<UserActive>();
        try {
            String sql = "SELECT UserName,MusicName,PlayTime,yplaymusic.musicId FROM yplaymusic INNER JOIN `user` ON yplaymusic.UserID = `user`.UserID INNER JOIN music ON yplaymusic.MusicID = music.MusicID WHERE user.UserID = ? ORDER BY PlayTime DESC LIMIT ?";
            ResultSet rs = DBUtils.doQuery(sql, userId, limit);
            while (rs.next()) {
                list.add(new UserActive(rs.getString(1), rs.getString(2), rs.getTimestamp(3), rs.getInt(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public boolean updateMusic(Music music) {
        try {
            String sql = "UPDATE music SET musicName=?,singer=?,classifyId=? WHERE musicId = ?";
            int result = DBUtils.doUpdate(sql, music.getName(), music.getSinger(), music.getClassifyId(), music.getId());
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
    public boolean deleteMusic(int musicId) {
        try {
            String sql = "DELETE FROM listconnect WHERE MusicID = ?";
            int result = DBUtils.doUpdate(sql, musicId);
            sql = "DELETE FROM nplaymusic WHERE MusicID = ?";
            result += DBUtils.doUpdate(sql, musicId);
            sql = "DELETE FROM yplaymusic WHERE MusicID = ?";
            result += DBUtils.doUpdate(sql, musicId);
            sql = "DELETE FROM music WHERE MusicID = ?";
            result += DBUtils.doUpdate(sql, musicId);
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
