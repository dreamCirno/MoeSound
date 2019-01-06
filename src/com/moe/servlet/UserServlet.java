package com.moe.servlet;

import com.moe.entity.List;
import com.moe.entity.Question;
import com.moe.entity.User;
import com.moe.impl.ListDaoImpl;
import com.moe.impl.UserDaoImpl;
import com.moe.utils.MD5;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

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
                    HttpSession session=request.getSession();
                    user=new User(userDao.getUserId(username),username);
                    session.setAttribute("user",user);
                    out.write("<script>alert('登陆成功');location.href='/web/login.jsp'</script>");
                } else {
                    out.write("<script>alert('登陆失败');location.href='/login.jsp'</script>");
                }
                break;
            case "register":
                // 初始化
                userDao = new UserDaoImpl();
                ListDaoImpl listDao = new ListDaoImpl();
                username = request.getParameter("username");
                Question question;
                if (!userDao.containUsername(username)) {
                    password = request.getParameter("password");
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
                    user = new User(username, password, sex, head, Grade.User.ordinal(), question);
                    if (userDao.register(user)) {
                        out.write("<script>alert('注册成功');location.href='/login.jsp'</script>");
                        // 用户注册成功后，新建歌单
                        int userId = userDao.getUserId(username);
                        com.moe.entity.List list = new List(userId, "我喜欢的音乐");
                        if (listDao.insertList(list)) {
                        } else {
                            out.write("<script>alert('我喜欢的音乐创建失败，请联系管理员！');location.href='/login.jsp'</script>");
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
                user = new User(username, question);
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
                password = request.getParameter("password");
                // MD5加密
                try {
                    password = MD5.md5Encrypt(password);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                user = new User(username, password);
                userDao = new UserDaoImpl();
                if (userDao.changePassword(user)) {
                    out.write("<script>alert('修改成功');location.href='/login.jsp'</script>");
                } else {
                    out.write("<script>alert('修改失败');location.href='/login.jsp'</script>");
                }
                break;
            default:
                break;
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
