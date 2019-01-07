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
import java.util.List;

@WebServlet(name = "SearchServlet")
public class SearchServlet extends HttpServlet {
    PrintWriter out;
    final int PAGECOUNT = 10;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        String keyword = request.getParameter("keyword");
        int page = Integer.parseInt(request.getParameter("page"));
        MusicDaoImpl musicDao = new MusicDaoImpl();
        List<Music> list = musicDao.selectListByKeyword(keyword, page, PAGECOUNT);
        int totalCount = musicDao.selectCountByKeyword(keyword);
        // 查询关键词的总条数
        request.setAttribute("count", totalCount);
        // 关键词
        request.setAttribute("keyword", keyword);
        // 查询关键词返回的限定列表
        request.setAttribute("result", list);
        // 当前页号
        request.setAttribute("page", page);
        request.getRequestDispatcher("/search.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
