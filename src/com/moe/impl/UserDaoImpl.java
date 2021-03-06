package com.moe.impl;

import com.moe.dao.UserDao;
import com.moe.entity.Question;
import com.moe.entity.User;
import com.moe.entity.UserDetail;
import com.moe.factory.Factory;
import com.moe.utils.DBUtils;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
            String sql = "UPDATE user SET password = ? WHERE userid = ?";
            int result = DBUtils.doUpdate(sql, user.getPassword(), user.getId());
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

    @Override
    public int getUserId(String username) {
        try {
            String sql = "SELECT userid FROM user WHERE username = ?";
            ResultSet rs = DBUtils.doQuery(sql, username);
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
    public User selectSongUploadHistory(int songId) {
        User user = new User();
        try {
            String sql = "SELECT UserName,UploadTime FROM music INNER JOIN `user` ON music.UserID = `user`.UserID WHERE musicID = ?";
            ResultSet rs = DBUtils.doQuery(sql, songId);
            while (rs.next()) {
                user = new User(rs.getString(1), rs.getTimestamp(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return user;
    }

    @Override
    public String selectUsernameById(int id) {
        String str = "";
        try {
            String sql = "SELECT UserName FROM user WHERE userid = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                str = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return str;
    }

    @Override
    public User selectUserSession(int id) {
        User user = null;
        try {
            String sql = "SELECT userId,username,sex,grade FROM user WHERE userid = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return user;
    }

    @Override
    public boolean updateUser(User user) {
        try {
            String sql = "UPDATE user SET username = ? , sex = ? , question = ? , answer = ? WHERE userid = ?";
            int result = DBUtils.doUpdate(sql, user.getUsername(), user.getSex(), user.getQuestion().getQuestion(), user.getQuestion().getAnswer(), user.getId());
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
    public UserDetail selectUserDetail(int id) {
        UserDetail userDetail = new UserDetail();
        try {
            // 设置用户ID
            userDetail.setUserId(id);
            // 设置用户创建歌单数量
            String sql = "SELECT COUNT(*) FROM list WHERE UserID = ?";
            ResultSet rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                userDetail.setCreateListCount(rs.getInt(1));
            }
            // 设置用户名和注册时间
            sql = "SELECT username,time FROM user WHERE UserID = ?";
            rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                userDetail.setUsername(rs.getString(1));
                userDetail.setRegisterTime(rs.getTimestamp(2));
            }
            // 设置用户上传歌曲量
            sql = "SELECT COUNT(*) FROM music WHERE UserID = ?";
            rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                userDetail.setUploadCount(rs.getInt(1));
            }
            // 设置用户最后听歌时间
            sql = "SELECT PlayTime FROM yplaymusic WHERE UserID = ? ORDER BY PlayTime DESC LIMIT 1";
            rs = DBUtils.doQuery(sql, id);
            while (rs.next()) {
                userDetail.setLastTime(rs.getTimestamp(1));
            }
            // 设置用户创建的歌单
            userDetail.setList(Factory.getListDaoInstance().selectListByUserId(id));
            // 设置用户动态，LIMIT为限制最大条数
            userDetail.setUserActives(Factory.getMusicDaoInstance().selectUserActiveByUserId(id, 25));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return userDetail;
    }

    @Override
    public int selectIdByUsername(String username) {
        int id = -1;
        try {
            String sql = "SELECT userId FROM user WHERE username = '" + username + "'";
            ResultSet rs = DBUtils.doQuery(sql);
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
    public List<User> selectUserList(int page, int count) {
        List<User> list = new ArrayList<User>();
        try {
            String sql = "SELECT userId,userName,sex,grade,time FROM user ORDER BY userId LIMIT " + (page - 1) * count + "," + count;
            ResultSet rs = DBUtils.doQuery(sql);
            while (rs.next()) {
                list.add(new User(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getTimestamp(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return list;
    }

    @Override
    public boolean deleteUser(int userId) {
        try {
            String sql = "DELETE FROM discuss WHERE userId = ?";
            int result = DBUtils.doUpdate(sql, userId);
            sql = "SELECT listID FROM list WHERE userId = ?";
            ResultSet rs = DBUtils.doQuery(sql, userId);
            int listId = -1;
            while (rs.next()) {
                listId = rs.getInt(1);
            }
            sql = "DELETE FROM listconnect WHERE listId = ?";
            result += DBUtils.doUpdate(sql, listId);
            sql = "DELETE FROM list WHERE userId = ?";
            result += DBUtils.doUpdate(sql, userId);
            sql = "DELETE FROM login WHERE userId = ?";
            result += DBUtils.doUpdate(sql, userId);

            sql = "SELECT musicId FROM music WHERE userId = ?";
            rs = DBUtils.doQuery(sql, userId);
            int musicId = -1;
            while (rs.next()) {
                musicId = rs.getInt(1);
                sql = "DELETE FROM nplaymusic WHERE musicId = ?";
                DBUtils.doUpdate(sql, musicId);
                sql = "DELETE FROM yplaymusic WHERE musicId = ?";
                DBUtils.doUpdate(sql, musicId);
                sql = "DELETE FROM music WHERE musicId = ?";
                DBUtils.doUpdate(sql, musicId);
            }

            sql = "DELETE FROM secret WHERE userId = ?";
            result += DBUtils.doUpdate(sql, userId);
            sql = "DELETE FROM yplaymusic WHERE userId = ?";
            result += DBUtils.doUpdate(sql, userId);
            sql = "DELETE FROM notice WHERE userId = ?";
            result += DBUtils.doUpdate(sql, userId);
            sql = "DELETE FROM user WHERE userId = ?";
            result += DBUtils.doUpdate(sql, userId);
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
    public boolean updateUserToAdmin(int userId) {
        try {
            String sql = "UPDATE user SET grade = 0 WHERE userid = ?";
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

    @Override
    public User selectUserInfo(int userId) {
        User user = new User();
        try {
            String sql = "SELECT userId,username,sex,question,answer FROM user WHERE userId = ?";
            ResultSet rs = DBUtils.doQuery(sql, userId);
            while (rs.next()) {
                user.setId(rs.getInt(1));
                user.setUsername(rs.getString(2));
                user.setSex(rs.getInt(3));
                user.setQuestion(new Question(rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return user;
    }
}