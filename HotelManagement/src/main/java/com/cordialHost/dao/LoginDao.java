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
import com.cordialHost.entities.Login;


public class LoginDao {

	private Connection con;
	private HttpServletRequest request;
	private HttpServletResponse response;

	public LoginDao(Connection con, HttpServletRequest request, HttpServletResponse response) {
		super();
		this.con = con;
		this.request = request;
		this.response = response;
	}

	public boolean loginUser(Login login) {
		System.out.println("Execution Started");
		boolean f = false;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String querry = "select * from CUSTOMER where NAME=? and EMAIL=? and PASSWORD=?";

		try {

			pstmt = this.con.prepareStatement(querry);
			pstmt.setString(1, login.getName());
			pstmt.setString(2, login.getEmail());
			pstmt.setString(3, login.getPassword());

			rs = pstmt.executeQuery();
			System.out.println("resultant querry executed");

			try {
				if (rs.next()) {
					System.out.println("User entered");
					RequestDispatcher rd = this.request.getRequestDispatcher("home.jsp");
					rd.forward(this.request, this.response);

				} else {
					System.out.println("User not entered");
					RequestDispatcher rd = this.request.getRequestDispatcher("LoginForm.jsp");
					rd.include(request, response);

				}
				f = true;

			} catch (SQLException | ServletException | IOException e) {

				e.printStackTrace();
			}

			finally {
				if (rs != null) {
					try {
						rs.close();
					} catch (SQLException e) {

						e.printStackTrace();
					}
				}

				if (pstmt != null) {
					try {
						pstmt.close();
					} catch (SQLException e) {

						e.printStackTrace();
					}
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return f;
	}

}
