package com.cordialHost.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cordialHost.dao.UserDao;
import com.cordialHost.email.otp.MailUser;
import com.cordialHost.entities.User;
import com.cordialHost.helper.ConnectionProvider;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();

		try {
		String name = request.getParameter("Name");
		String phoneNo1 = request.getParameter("phoneNo");
		int phoneNo= Integer.parseInt(phoneNo1);
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("Gender");

		User user = new User(name, phoneNo, email, password, gender);
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		dao.SaveUser(user);
		
		RequestDispatcher rd  =request.getRequestDispatcher("orders.jsp");
		rd.forward(request, response);
		
		
	

	/*	HttpSession session = request.getSession();
		MailUser mailuser = (MailUser) session.getAttribute("authocode");
		String code = request.getParameter("authocode");

		if (code.equals(mailuser.getCode())) {
			out.println("Verification done");
		} else {
			out.println("Incorrect Verification Pin");
		}
		}catch (Exception e) {
			e.printStackTrace();
		}*/
	}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
