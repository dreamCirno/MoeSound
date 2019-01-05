package com.moe.servlet;

import com.moe.entity.User;
import com.moe.impl.UserDaoImpl;
import com.moe.utils.MD5;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "UserServlet")
public class UserServlet extends javax.servlet.http.HttpServlet {
    PrintWriter out;

    // 权限级别（数字越小，权限越大）
    public enum Grade {Admin, User}

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
                    out.write("<script>alert('登陆成功');location.href='/login.jsp'</script>");
                } else {
                    out.write("<script>alert('登陆失败');location.href='/login.jsp'</script>");
                }
                break;
            case "register":
                // 初始化
                username = request.getParameter("username");
                password = request.getParameter("password");
                // MD5加密
                try {
                    password = MD5.md5Encrypt(password);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                int sex = Integer.parseInt(request.getParameterValues("sex")[0]);
                String head = "";
                /*
                Timestamp registerTime = new Timestamp(new Date().getTime());
                */
                userDao = new UserDaoImpl();
                // 新建User对象
                user = new User(username, password, sex, head, Grade.User.ordinal());
                if (userDao.register(user)) {
                    out.write("<script>alert('注册成功');location.href='/login.jsp'</script>");
                } else {
                    out.write("<script>alert('注册失败');location.href='/login.jsp'</script>");
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
