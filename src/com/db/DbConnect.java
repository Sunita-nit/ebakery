package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	static Connection con;
	public static Connection getConnection(){
		

		try {
			//Load the driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//declare url,username,password
			String url ="jdbc:oracle:thin:@localhost:1521:XE";
			String username = "system";
			String password = "root";
			
			//get connection
			con = DriverManager.getConnection(url,username,password);
			System.out.println("Connected : "+con);
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		
		return con;
	}
}
