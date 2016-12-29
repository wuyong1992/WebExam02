package com.wy.servlet;

import org.w3c.dom.ls.LSException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wuyong on 2016/12/29.
 */
@WebServlet(name = "DelServlet",urlPatterns = {"/DelServlet"})
public class DelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DelServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] name = request.getParameterValues("check");//获取选定的checkbox数组
        List list = (ArrayList) request.getSession().getAttribute("list");//获取list
        if (name != null) {
            System.out.println(name.length);
            for (int i = name.length - 1; i >= 0; i--) {//循环删除
                // 要先删除索引最大的值，否则批量删除list最后长度减少，索引不对应
                int index = Integer.parseInt(name[i]);
                list.remove(index);
            }
        }
        request.getSession().setAttribute("list", list);//添加list到session中
        response.sendRedirect("index.jsp");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
