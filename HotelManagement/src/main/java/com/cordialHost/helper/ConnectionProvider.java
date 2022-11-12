package com.cordialHost.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectionProvider {

	private static Connection con;
	

	public static Connection getConnection() {
		
		String url = "jdbc:h2:~/test;AUTO_SERVER=TRUE";
		String JDBC_DRIVER = "org.h2.Driver";
		String username = "sa";
		String password = "1234";
		if(con==null) {
			
			try {
				 Class.forName(JDBC_DRIVER); 
				con= DriverManager.getConnection(url,username,password);
				System.out.println("Connection Established");
			} catch (SQLException e) {
				
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return con;
		
	}

}
