package com.moe.dao;

import com.moe.entity.Question;
import com.moe.entity.User;
import com.moe.entity.UserDetail;

import java.util.List;

public interface UserDao {
    /**
     * 登录
     *
     * @param user
     * @return
     */
    public boolean login(User user);

    /**
     * 注册
     *
     * @param user
     * @return
     */
    public boolean register(User user);

    /**
     * 通过用户名获取密保问题和正确答案
     *
     * @param username
     * @return
     */
    public Question getQuestion(String username);

    /**
     * 验证密保问题
     *
     * @param user
     * @return
     */
    public boolean validateQuestion(User user);

    /**
     * 修改密码
     *
     * @param user
     * @return
     */
    public boolean changePassword(User user);

    /**
     * 查询重复用户名
     *
     * @param username
     * @return
     */
    public boolean containUsername(String username);

    /**
     * 通过用户名获取用户ID
     *
     * @param username
     * @return
     */
    public int getUserId(String username);

    /**
     * 获取歌曲上传资料：用户名和上传日期
     *
     * @param songId
     * @return
     */
    public User selectSongUploadHistory(int songId);

    /**
     * 通过用户ID获取用户名
     *
     * @param id
     * @return
     */
    public String selectUsernameById(int id);

    /**
     * 通过用户ID获取设置Session的User
     *
     * @param id
     * @return
     */
    public User selectUserSession(int id);

    /**
     * 更改用户信息
     *
     * @param user
     * @return
     */
    public boolean updateUser(User user);

    /**
     * 查询用户细节信息
     *
     * @param id
     * @return
     */
    public UserDetail selectUserDetail(int id);

    /**
     * 通过用户名获取用户ID
     *
     * @param username
     * @return
     */
    public int selectIdByUsername(String username);

    /**
     * 查询用户列表
     *
     * @param page
     * @param count
     * @return
     */
    public List<User> selectUserList(int page, int count);

    /**
     * 删除用户
     *
     * @param userId
     * @return
     */
    public boolean deleteUser(int userId);

    /**
     * 提升用户为管理员
     *
     * @param userId
     * @return
     */
    public boolean updateUserToAdmin(int userId);

    /**
     * 获取用户信息
     * @param userId
     * @return
     */
    public User selectUserInfo(int userId);
}
