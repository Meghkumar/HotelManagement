package com.cordialHost.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cordialHost.entities.User;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean SaveUser(User user) {
		System.out.println("Execution Started");
		boolean f = false;

		String querry = "insert into CUSTOMER values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = this.con.prepareStatement(querry);
			pstmt.setString(1, user.getName());
			pstmt.setInt(2, user.getPhoneNo());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getPassword());
			pstmt.setString(5, user.getGender());

			pstmt.executeUpdate();
			System.out.println("Data inserted");

			f = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return f;

	}

}
