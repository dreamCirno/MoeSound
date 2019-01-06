package com.moe.servlet;

import com.moe.dao.UserDao;
import com.moe.entity.Music;
import com.moe.entity.Upload;
import com.moe.impl.MusicDaoImpl;
import com.moe.impl.UploadDaoImpl;
import com.moe.impl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "InfoServlet")
public class InfoServlet extends HttpServlet {
    PrintWriter out;
    // 获取用户上传歌曲信息
    String title = "";
    String single = "";
    String musicPath = "";
    String imagePath = "";
    // 获取分类编号
    int classifyId;
    // 获取用户名
    HttpSession session;
    String username;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码格式，一定要放最首部，否则可能导致乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        // 获得内置对象out
        out = response.getWriter();
        // 获取歌曲路径
        musicPath = request.getParameter("musicPath").toString();
        // 获取图片路径
        imagePath = request.getParameter("imagePath").toString();
        // 获取用户上传歌曲信息
        title = request.getParameter("title");
        // 获取用户上传歌曲信息
        single = request.getParameter("singer");
        // 获取分类编号
        classifyId = Integer.parseInt(request.getParameterValues("type1")[0]);
        // 获取用户名
        session = request.getSession();
        username = "a";

        Music music = new Music(classifyId, title, single, 300, imagePath, musicPath);
        MusicDaoImpl musicDao = new MusicDaoImpl();
        if (musicDao.insertMusic(music)) {
            int id = musicDao.selectIdByPath(musicPath);
            int uid = new UserDaoImpl().getUserId(username);
            Upload upload = new Upload(id, uid);
            if (new UploadDaoImpl().insertUploadInfo(upload)) {
                out.write("<script>alert('上传成功');location.href='/load.jsp'</script>");
            }
        } else {
            out.write("<script>alert('上传失败');location.href='/load.jsp'</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
