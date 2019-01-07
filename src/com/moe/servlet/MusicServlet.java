package com.moe.servlet;

import com.moe.entity.Music;
import com.moe.impl.MusicDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MusicServlet")
public class MusicServlet extends HttpServlet {
    PrintWriter out;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        int musicId = Integer.parseInt(request.getParameter("musicId"));
        MusicDaoImpl musicDao = new MusicDaoImpl();
        Music music = musicDao.selectMusic(musicId);
        request.setAttribute("music", music);
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
