package com.cordialHost.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cordialHost.entities.Product;
import com.cordialHost.entities.User;

public class AdminCrudDao {

	private Connection con;
	private PreparedStatement pstmt;
	private HttpServletRequest request;
	private HttpServletResponse response;

	AdminCrudDao(Connection con) {
		this.con = con;

	}
	
	public boolean uploadProduct(Product product) {
		System.out.println("Execution Started");
		boolean f = false;

		String querry = "insert into PRODUCT values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = this.con.prepareStatement(querry);
			pstmt.setInt(1,product.getId());
			pstmt.setString(2, product.getName());
			pstmt.setString(3, product.getCategory());
			pstmt.setDouble(4, product.getPrice());
			
			pstmt.executeUpdate();
			System.out.println("Data inserted");

			f = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return f;


}
}
