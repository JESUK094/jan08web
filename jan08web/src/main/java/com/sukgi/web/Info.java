package com.sukgi.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/info")
public class Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Info() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//JSP에 있는거 여기다가 쓰면 한방에 다 할 수 있음. 하지만 JSP어려우니까 연결
		
		RequestDispatcher rd = request.getRequestDispatcher("info.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
	}

}
