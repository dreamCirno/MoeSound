package com.moe.servlet;

import com.moe.entity.Discuss;
import com.moe.entity.User;
import com.moe.factory.Factory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

@WebServlet(name = "DiscussServlet")
public class DiscussServlet extends HttpServlet {
    PrintWriter out;
    HttpSession session;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        String action = request.getParameter("action");

        switch (action) {
            case "publish":
                session = request.getSession();
                int musicId = Integer.parseInt(request.getParameter("sid"));
                User user = (User) session.getAttribute("user");
                if (user != null) {
                    int userId = user.getId();
                    String content = request.getParameter("content");
                    Discuss discuss = new Discuss(musicId, userId, content);
                    if (Factory.getDiscussDaoInstance().insertComment(musicId, userId, content)) {
                        out.write(String.format("<script>location.href='/Music?musicId=%s'</script>", musicId));
                    } else {
                        out.write(String.format("<script>alert('评论失败');location.href='/Music?musicId=%s'</script>", musicId));
                    }
                } else {
                    out.write(String.format("<script>alert('请先登录');location.href='/login.jsp'</script>'"));
                }
                break;
            case "delete":
                user = (User) request.getSession().getAttribute("user");
                if (user != null) {
                    if (user.getGrade() < 2) {
                        musicId = Integer.parseInt(request.getParameter("musicId"));
                        int userId = Integer.parseInt(request.getParameter("userId"));
                        Timestamp time = (Timestamp.valueOf(request.getParameter("time")));
                        Discuss discuss = new Discuss(musicId, userId, time);
                        if (Factory.getDiscussDaoInstance().deleteComment(discuss)) {
                            out.write(String.format("<script>alert('删除成功');location.href='/Music?musicId=%s'</script>'", musicId));
                        } else {
                            out.write(String.format("<script>alert('删除失败');location.href='/Music?musicId=%s'</script>'", musicId));
                        }
                    } else {
                        out.write(String.format("<script>alert('非法操作');location.href='/web.jsp'</script>'"));
                    }
                } else {
                    out.write(String.format("<script>alert('请先登录');location.href='/login.jsp'</script>'"));
                }
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
