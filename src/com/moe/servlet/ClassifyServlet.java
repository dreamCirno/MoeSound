package com.moe.servlet;

import com.moe.dao.ClassifyDao;
import com.moe.entity.Music;
import com.moe.impl.ClassifyDaoImpl;
import com.moe.impl.MusicDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ClassifyServlet")
public class ClassifyServlet extends HttpServlet {
    PrintWriter out;
    // 设置页面显示最大条数
    final int PAGECOUNT = 5;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        MusicDaoImpl musicDao = new MusicDaoImpl();
        ClassifyDaoImpl classifyDao = new ClassifyDaoImpl();
        int sort = Integer.parseInt(request.getParameter("sort"));
        int page = Integer.parseInt(request.getParameter("page"));
        int totalCount = musicDao.selectCountByClassify(sort);
        List<Music> list = musicDao.selectListByClassify(sort, page, PAGECOUNT);
        String classifyName = classifyDao.selectNameById(sort);
        request.setAttribute("classifyName", classifyName);
        request.setAttribute("sort", sort);
        request.setAttribute("count", totalCount);
        request.setAttribute("list", list);
        request.setAttribute("page", page);
        request.setAttribute("pageCount", PAGECOUNT);
        request.getRequestDispatcher("/type.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
