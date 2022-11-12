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
import javax.servlet.http.HttpSession;

import com.cordialHost.dao.LoginDao;
import com.cordialHost.entities.Login;
import com.cordialHost.entities.Message;
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
			LoginDao dao = new LoginDao(ConnectionProvider.getConnection(), request, response);
			Login loginuser = dao.Login(name,email,password);
			dao.loginUser(loginuser);
			
			if (loginuser==null) {
				Message msg = new Message("Invalid Details! Please Check the Details again","error","alert-danger");
				HttpSession session = request.getSession();
				session.setAttribute("msg", msg);
				response.sendRedirect("LoginForm.jsp");

			} else {
				HttpSession s = request.getSession();
				s.setAttribute("currentUser", loginuser);
				response.sendRedirect("home.jsp");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
