package com.cordialHost.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cordialHost.dao.AdminLoginDao;
import com.cordialHost.entities.Admin;
import com.cordialHost.helper.ConnectionProvider;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminLoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String adminName = request.getParameter("adminemail");
		String adminpassword= request.getParameter("adminpassword");
		
		Admin ad = new Admin(adminName,adminpassword);
		AdminLoginDao dao = new AdminLoginDao(ConnectionProvider.getConnection(), request, response);
		dao.adminLogin(ad);
		
		System.out.println("do get method executed");
		
		
		
	
	}

}
