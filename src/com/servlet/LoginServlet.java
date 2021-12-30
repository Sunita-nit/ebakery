package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bo.User;
import com.db.DbConnect;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//create object for User
		User user = null;
		ResultSet rs = null;
		
		try {
			Connection con = DbConnect.getConnection();
			String sql = "select * from bakery_user where(email='"+email+"' AND password='"+password+"')";
			PreparedStatement pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
		
			
			if(rs.next()){
				name = rs.getString("name");
				user = new User();
				user.setName(name);
				
				//login admin

				
				
			}//end if
			
					} catch (Exception e) {
			
			// TODO: handle exception
		}
		if(user!=null){
			//user login successful create session
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user);
			
			//send to home page
			//response.sendRedirect("loginSuccess.jsp");
			response.sendRedirect("home.jsp");
		}//end if
		else{
			response.sendRedirect("error.jsp");
		}
	}
}
