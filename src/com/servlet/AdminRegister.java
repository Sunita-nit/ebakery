package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DbConnect;

/**
 * Servlet implementation class AdminRegister
 */
public class AdminRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public AdminRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con = DbConnect.getConnection();
			String sql ="insert into admin_user(name,email,password)values(?,?,?)";
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			//get data form admin register form.jsp
			pstmt.setString(1,request.getParameter("name"));
			pstmt.setString(2,request.getParameter("email"));
			pstmt.setString(3,request.getParameter("password"));
			pstmt.executeUpdate();
			System.out.println("Successfully registered");
			//PrintWriter out = response.getWriter();
			//out.print("Successfully registered");
			response.sendRedirect("admin_login.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
}