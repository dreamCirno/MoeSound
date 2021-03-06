package com.moe.servlet;

import com.moe.entity.*;
import com.moe.factory.Factory;
import com.moe.impl.ListDaoImpl;
import com.moe.impl.UserDaoImpl;
import com.moe.utils.MD5;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import static com.moe.factory.Factory.getUserDaoInstance;

@WebServlet(name = "UserServlet")
public class UserServlet extends javax.servlet.http.HttpServlet {
    PrintWriter out;

    // 权限级别（数字越小，权限越大）
    public enum Grade {
        Admin, User
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        String action = request.getParameter("action");
        switch (action) {
            // 登录模块
            case "login":
                String username = request.getParameter("username");
                int id = Factory.getUserDaoInstance().selectIdByUsername(username);
                boolean allow = Factory.getUserBanDaoInstance().checkUserBan(id);
                if (allow) {
                    String password = request.getParameter("password");
                    // MD5加密
                    try {
                        password = MD5.md5Encrypt(password);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    // 新建User
                    User user = new User(username, password);
                    // 新建UserDao用作数据验证和处理
                    UserDaoImpl userDao = new UserDaoImpl();
                    if (userDao.login(user)) {
                        HttpSession session = request.getSession();
                        user = getUserDaoInstance().selectUserSession(userDao.getUserId(username));
                        session.setAttribute("user", user);
                        out.write("<script>location.href='/web.jsp'</script>");
                    } else {
                        out.write("<script>alert('登陆失败');location.href='/login.jsp'</script>");
                    }
                    break;
                } else {
                    out.write("<script>alert('登陆失败，该用户被封禁');location.href='/login.jsp'</script>");
                }
            case "register":
                // 初始化
                UserDaoImpl userDao = new UserDaoImpl();
                ListDaoImpl listDao = new ListDaoImpl();
                username = request.getParameter("username");
                Question question;
                if (!userDao.containUsername(username)) {
                    String password = request.getParameter("password");
                    // MD5加密
                    try {
                        password = MD5.md5Encrypt(password);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    int sex = Integer.parseInt(request.getParameterValues("sex")[0]);
                    String head = "";

                    question = new Question(request.getParameter("question"), request.getParameter("answer"));
                /*
                Timestamp registerTime = new Timestamp(new Date().getTime());
                */
                    // 新建User对象
                    User user = new User(username, password, sex, head, Grade.User.ordinal(), question);
                    if (userDao.register(user)) {
                        out.write("<script>alert('注册成功');location.href='/login.jsp'</script>");
                        // 用户注册成功后，新建歌单
                        int userId = userDao.getUserId(username);
                        com.moe.entity.List list = new List(userId, "我喜欢的音乐");
                        if (listDao.insertList(list)) {
                        } else {
                            out.write("<script>alert('我喜欢的音乐创建失败，请联系管理员！');location.href='/web.jsp'</script>");
                        }
                    } else {
                        out.write("<script>alert('注册失败');location.href='/register.jsp'</script>");
                    }
                } else {
                    out.write("<script>alert('该用户名已被注册');location.href='/register.jsp'</script>");
                }
                break;
            case "forget":
                username = request.getParameter("username");
                userDao = new UserDaoImpl();
                question = userDao.getQuestion(username);
                request.setAttribute("username", username);
                request.setAttribute("question", question);
                request.getRequestDispatcher("question.jsp").forward(request, response);
                break;
            case "question":
                username = request.getParameter("username");
                question = new Question(request.getParameter("answer"));
                User user = new User(username, question);
                userDao = new UserDaoImpl();
                request.setAttribute("username", username);
                if (userDao.validateQuestion(user)) {
                    request.getRequestDispatcher("/newpwd.jsp").forward(request, response);
                } else {
                    out.write("<script>alert('验证失败');location.href='/forget.jsp'</script>");
                }
                break;
            case "newpwd":
                username = request.getParameter("username");
                String password = request.getParameter("password");
                // MD5加密
                try {
                    password = MD5.md5Encrypt(password);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                user = new User(username, password);
                user.setId(Factory.getUserDaoInstance().getUserId(username));
                userDao = new UserDaoImpl();
                if (userDao.changePassword(user)) {
                    out.write("<script>alert('修改成功');location.href='/login.jsp'</script>");
                } else {
                    out.write("<script>alert('修改失败');location.href='/login.jsp'</script>");
                }
                break;
            case "logout":
                request.getSession().removeAttribute("user");
                out.write("<script>location.href='/web.jsp'</script>");
                break;
            case "getInfo":
                int userId = Integer.parseInt(request.getParameter("userId"));
                user = Factory.getUserDaoInstance().selectUserInfo(userId);
                request.setAttribute("userinfo", user);
                request.getRequestDispatcher("/admininfo.jsp").forward(request, response);
                //                user = (User) request.getSession().getAttribute("user");
//                if (user != null) {
//                    username = request.getParameter("name");
//                    int gender = Integer.parseInt(request.getParameterValues("gender")[0]);
//                    String oldpass = request.getParameter("oldpass");
//                    String newpass = request.getParameter("newpass");
//                    int userId = user.getId();
//                    // 验证用户名和旧密码是否匹配
//                    try {
//                        user = new User(user.getUsername(), MD5.md5Encrypt(oldpass));
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                    }
//                    if (getUserDaoInstance().login(user)) {
//                        try {
//                            user = new User(userId, username, gender, MD5.md5Encrypt(newpass));
//                        } catch (Exception e) {
//                            e.printStackTrace();
//                        }
//                        if (getUserDaoInstance().updateUser(user)) {
//                            request.getSession().removeAttribute("user");
//                            out.write("<script>alert('修改成功，请重新登录');location.href='/login.jsp'</script>");
//                        } else {
//                            out.write("<script>alert('修改失败，该用户名已被使用');location.href='/web.jsp'</script>");
//                        }
//                    }
//                } else {
//                    out.write("<script>alert('请先登录');location.href='/login.jsp'</script>");
//                }
                break;
            case "updateByAdmin":
                userId = Integer.parseInt(request.getParameter("userId"));
                username = request.getParameter("name");
                int sex = Integer.parseInt(request.getParameterValues("gender")[0]);
                question = new Question(request.getParameter("question"), request.getParameter("answer"));
                user = new User(username, sex, question);
                user.setId(userId);
                if (Factory.getUserDaoInstance().updateUser(user)) {
                    out.write("<script>alert('修改成功');location.href='/User?action=usermanage'</script>");
                } else {
                    out.write("<script>alert('修改失败');location.href='/User?action=usermanage'</script>");
                }
                break;
            case "updatePassByAdmin":
                userId = Integer.parseInt(request.getParameter("userId"));
                String newpass = request.getParameter("newpass");
                user = new User();
                user.setId(userId);
                try {
                    user.setPassword(MD5.md5Encrypt(newpass));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (Factory.getUserDaoInstance().changePassword(user)) {
                    out.write("<script>alert('修改成功');location.href='/User?action=usermanage'</script>");
                } else {
                    out.write("<script>alert('修改失败');location.href='/User?action=usermanage'</script>");
                }
                break;
            case "selectInfo":
                userId = Integer.parseInt(request.getParameter("userId"));
                user = Factory.getUserDaoInstance().selectUserInfo(userId);
                request.setAttribute("userinfo", user);
                request.getRequestDispatcher("/info.jsp").forward(request, response);
                break;
            case "updateInfo":
                userId = Integer.parseInt(request.getParameter("userId"));
                username = request.getParameter("name");
                sex = Integer.parseInt(request.getParameter("gender"));
                question = new Question(request.getParameter("question"), request.getParameter("answer"));
                user = new User(username, sex, question);
                user.setId(userId);
                if (Factory.getUserDaoInstance().updateUser(user)) {
                    out.write("<script>alert('修改成功');location.href='/User?action=selectInfo&userId=" + userId + "'</script>");
                } else {
                    out.write("<script>alert('修改失败');location.href='/User?action=selectInfo&userId=" + userId + "'</script>");
                }
                break;
            case "updatepass":
                user = (User) request.getSession().getAttribute("user");
                if (user != null) {
                    String oldpass = request.getParameter("oldpass");
                    newpass = request.getParameter("newpass");
                    userId = user.getId();
                    // 验证用户名和旧密码是否匹配
                    try {
                        user = new User(user.getUsername(), MD5.md5Encrypt(oldpass));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (getUserDaoInstance().login(user)) {
                        try {
                            user = new User(userId, MD5.md5Encrypt(newpass));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        if (getUserDaoInstance().changePassword(user)) {
                            request.getSession().removeAttribute("user");
                            out.write("<script>alert('修改成功，请重新登录');location.href='/login.jsp'</script>");
                        } else {
                            out.write("<script>alert('修改失败');location.href='/web.jsp'</script>");
                        }
                    } else {
                        out.write("<script>alert('旧密码匹配不正确');location.href='/web.jsp'</script>");
                    }
                } else {
                    out.write("<script>alert('请先登录');location.href='/login.jsp'</script>");
                }
                break;
            case "userdetail":
                id = Integer.parseInt(request.getParameter("id"));
                UserDetail userDetail = Factory.getUserDaoInstance().selectUserDetail(id);
                request.setAttribute("userdetail", userDetail);
                request.getRequestDispatcher("/user.jsp").forward(request, response);
                break;
            case "delete":
                id = Integer.parseInt(request.getParameter("userId"));
                if (Factory.getUserDaoInstance().deleteUser(id)) {
                    out.write("<script>alert('删除成功');location.href='/User?action=usermanage'</script>");
                } else {
                    out.write("<script>alert('删除失败');location.href='/User?action=usermanage'</script>");
                }
                break;
            case "usermanage":
                java.util.List<User> userlist = Factory.getUserDaoInstance().selectUserList(1, 30);
                request.setAttribute("userlist", userlist);
                request.getRequestDispatcher("/manage.jsp").forward(request, response);
                break;
            case "levelup":
                id = Integer.parseInt(request.getParameter("userId"));
                if (Factory.getUserDaoInstance().updateUserToAdmin(id)) {
                    out.write("<script>alert('该用户已是管理员');location.href='/User?action=usermanage'</script>");
                } else {
                    out.write("<script>alert('提升管理员失败');location.href='/User?action=usermanage'</script>");
                }
                break;
            case "ban":
                id = Integer.parseInt(request.getParameter("banId"));
                int dayCount = Integer.parseInt(request.getParameter("banDate"));
                UserBan userBan = new UserBan(id, dayCount);
                if (Factory.getUserBanDaoInstance().insertBan(userBan)) {
                    out.write("<script>alert('该用户已被封禁');location.href='/User?action=usermanage'</script>");
                } else {
                    out.write("<script>alert('系统错误');location.href='/User?action=usermanage'</script>");
                }
                break;
            case "disban":
                id = Integer.parseInt(request.getParameter("userId"));
                Factory.getUserBanDaoInstance().deleteUserBan(id);
                out.write("<script>location.href='/User?action=usermanage'</script>");
                break;
            default:
                break;
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
