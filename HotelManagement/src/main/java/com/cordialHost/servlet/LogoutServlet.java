package com.cordialHost.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LogoutServlet() {
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		PrintWriter out = response.getWriter();
		
//		if(request.getSession().getAttribute("auth")!=null){
//			
//			request.getSession().removeAttribute("auth");
//			response.sendRedirect("LoginForm.jsp");
//		}		
//		
//		else {
//			response.sendRedirect("LoginForm.jsp");
//		}
		
		
	
	}

	


}
