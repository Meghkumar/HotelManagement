package com.cordialHost.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cordialHost.entities.Admin;
import com.cordialHost.servlet.AdminLoginServlet;

public class AdminLoginDao {

	private Connection con;
	private HttpServletRequest request;
	private HttpServletResponse response;

	public AdminLoginDao(Connection con, HttpServletRequest request, HttpServletResponse response) {

		super();
		this.con = con;
		this.request = request;
		this.response = response;

	}

	public boolean adminLogin(Admin admin) {

		System.out.println("Enter into admin method");
		boolean f = false;

		ResultSet rs = null;
		PreparedStatement pstmt = null;
		String querry = "select * from CUSTOMER where EMAIL=? and PASSWORD =?";

		try {
			pstmt = this.con.prepareStatement(querry);
			pstmt.setString(1, admin.getAdminemail());
			pstmt.setString(2, admin.getAdminpassword());

			rs = pstmt.executeQuery();
			System.out.println("resultset querry executed");
			if (rs.next()) {

				RequestDispatcher rd = this.request.getRequestDispatcher("home.jsp");
				rd.forward(this.request, this.response);

			}

			else {
				RequestDispatcher rd = this.request.getRequestDispatcher("AdminForm.jsp");
				rd.include(this.request, this.response);

			}

			f= true;
		}
		

		catch (SQLException | ServletException | IOException e) {

			e.printStackTrace();
		}

		return f;

	}

}
