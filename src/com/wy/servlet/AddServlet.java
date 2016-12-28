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

    private ServletContext context = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");
        String banji = request.getParameter("banji");
        String course = request.getParameter("course");
        Double score = Double.valueOf(request.getParameter("score"));

        StudentInfo si = new StudentInfo();
        si.setName(name);
        si.setBj(banji);
        si.setKc(course);
        si.setScore(score);

        ArrayList info = (ArrayList) this.context.getAttribute("student");
        info.add(si);
        this.context.setAttribute("student", info);

        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.context = config.getServletContext();
        this.context.setAttribute("student", new ArrayList());

    }
}
