package com.cordialHost.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cordialHost.dao.LoginDao;
import com.cordialHost.entities.Login;
import com.cordialHost.helper.ConnectionProvider;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		System.out.println("Do get Method started");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String name = request.getParameter("loginname");
		String email = request.getParameter("loginemail");
		String password = request.getParameter("loginpassword");

		try {
			Login loginuser = new Login(name, email, password);
			LoginDao dao = new LoginDao(ConnectionProvider.getConnection(), request, response);
			dao.loginUser(loginuser);

			/*
			 * if (loginuser == null) { request.getSession().setAttribute("auth",
			 * loginuser); response.sendRedirect("orders.jsp"); } else {
			 * out.println("User login failed"); }
			 */

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
