package com.moe.servlet;

import com.moe.entity.Music;
import com.moe.factory.Factory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ManageServlet")
public class ManageServlet extends HttpServlet {
    PrintWriter out;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        String action = request.getParameter("action");
        int musicId = Integer.parseInt(request.getParameter("musicId"));
        switch (action) {
            case "select":
                Music music = Factory.getMusicDaoInstance().selectMusic(musicId);
                request.setAttribute("name", music.getName());
                request.setAttribute("singer", music.getSinger());
                request.getRequestDispatcher("/edit.jsp").forward(request, response);
                break;
            case "edit":
                String title = request.getParameter("title");
                String singer = request.getParameter("singer");
                int type = Integer.parseInt(request.getParameterValues("type1")[0]);
                music = new Music();
                music.setId(musicId);
                music.setName(title);
                music.setSinger(singer);
                music.setClassifyId(type);
                if (Factory.getMusicDaoInstance().updateMusic(music)) {
                    out.write("<script>alert('修改成功');location.href='/web.jsp'</script>");
                } else {
                    out.write("<script>alert('修改失败');location.href='/web.jsp'</script>");
                }
                break;
            case "delete":
                if (Factory.getMusicDaoInstance().deleteMusic(musicId)) {
                    out.write("<script>alert('删除成功');location.href='/web.jsp'</script>");
                } else {
                    out.write("<script>alert('删除失败');location.href='/web.jsp'</script>");
                }
                break;
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
