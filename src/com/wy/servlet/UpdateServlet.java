package com.wy.servlet;

import com.wy.Bean.StudentInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.wy.servlet.AddServlet.list;

/**
 * Created by wuyong on 2016/12/29.
 */
@WebServlet(name = "UpdateServlet",urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer chname = (Integer) request.getSession().getAttribute("name");//获取checkbox的name值
        //int index = Integer.parseInt(chname[0]);
        List list = (ArrayList) request.getSession().getAttribute("list");
        String name =request.getParameter("name");
        String banji =request.getParameter("banji");
        String course =request.getParameter("course");
        String score =request.getParameter("score");
        StudentInfo stu=new StudentInfo();
        stu.setName(name);
        stu.setBj(banji);
        stu.setKc(course);
        stu.setScore(score);
        list.set(chname,stu);//通过name作为list索引 将新值设置到list中
        request.getSession().setAttribute("list", list);
        response.sendRedirect("index.jsp");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}