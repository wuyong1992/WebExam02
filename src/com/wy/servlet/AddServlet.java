package com.wy.servlet;


import com.wy.Bean.StudentInfo;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Administrator on 2016/12/27.
 */
@WebServlet(name = "AddServlet",urlPatterns = {"/AddServlet"})
public class AddServlet extends HttpServlet {

    public static ArrayList<StudentInfo> list = new ArrayList<StudentInfo>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");
        String banji = request.getParameter("banji");
        String course = request.getParameter("course");
        String score = request.getParameter("score");

        StudentInfo stu = new StudentInfo();
        stu.setName(name);
        stu.setBj(banji);
        stu.setKc(course);
        stu.setScore(score);

        list.add(stu);
        request.getSession().setAttribute("list", list);
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }


}
