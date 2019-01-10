package com.moe.servlet;

import com.moe.entity.User;
import com.moe.impl.MusicDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountServlet")
public class CountServlet extends HttpServlet {
    PrintWriter out;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        String path = request.getParameter("src");
        int musicId = Integer.parseInt(request.getParameter("musicId"));
        MusicDaoImpl musicDao = new MusicDaoImpl();
        if (request.getSession().getAttribute("user") == null) {
            System.out.println(musicDao.updatePlayCount(musicId));
        } else {
            User user = (User) request.getSession().getAttribute("user");
            musicDao.updatePlayCount(musicId, user.getId());
        }
        int userPlayCount = musicDao.selectUserPlayCount(musicId);
        int guestPlayCount = musicDao.selectGuestPlayCount(musicId);
        request.setAttribute("userPlayCount", userPlayCount);
        request.setAttribute("guestPlayCount", guestPlayCount);
        out.write(String.format("<script src='/js/jquery/jquery.js'></script><script>$(\"#myaudio\", parent.document).attr('src', %s);$(\"#myaudio\", parent.document)[0].play();window.history.back(-1)</script>", path));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
