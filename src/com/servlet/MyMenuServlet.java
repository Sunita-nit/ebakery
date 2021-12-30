package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DbConnect;


public class MyMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyMenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con= DbConnect.getConnection();
			FileInputStream fis=null;
			String myloc=request.getParameter("myimg");
			File image= new File(myloc);
			String sql ="insert into my_menu(name,price,image)values(?,?,?)";
			response.setContentType("application/octate-stream");
			response.setHeader("content-Disposition","attachment;filename=\""+image+"\"");
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			
			//get data form register form.jsp
			
			fis=new FileInputStream(image);
			pstmt.setString(1,request.getParameter("name"));
			pstmt.setString(2,request.getParameter("price"));
			pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
			pstmt.executeUpdate();
				System.out.println("Successfully Updated Menu");
			
			//out.print("Successfully registered");
			response.sendRedirect("home.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
