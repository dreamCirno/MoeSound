package com.moe.servlet;

import com.moe.entity.ListConnect;
import com.moe.entity.Music;
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
import java.util.List;

@WebServlet(name = "ListServlet")
public class ListServlet extends HttpServlet {
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
            case "mark":
                int musicId = Integer.parseInt(request.getParameter("musicid"));
                session = request.getSession();
                User user = (User) session.getAttribute("user");
                if (user != null) {
                    ListConnect listConnect = new ListConnect(musicId, user.getId());
                    if (Factory.getListDaoInstance().insertMusic(listConnect)) {
                        response.getWriter().write(String.format("<script>alert('收藏成功');window.history.go(-1);window.location.reload()</script>", musicId));
                    } else {
                        response.getWriter().write(String.format("<script>alert('收藏失败');window.history.go(-1);window.location.reload()</script>", musicId));
                    }
                } else {
                    response.getWriter().write("<script>alert('请先登录');location.href='/login.jsp'</script>");
                }
                break;
            case "select":
                int id = Integer.parseInt(request.getParameter("list"));
                com.moe.entity.List listInfo = Factory.getListDaoInstance().selectListById(id);
                List<Music> list = Factory.getListDaoInstance().selectList(id);
                String owner = Factory.getUserDaoInstance().selectUsernameById(listInfo.getId());
                request.setAttribute("owner", owner);
                request.setAttribute("list", list);
                request.setAttribute("info", listInfo);
                request.getRequestDispatcher("/list.jsp").forward(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
