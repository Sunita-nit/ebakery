package com.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DbConnect;
public class DisplayOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DisplayOrders() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();  
         response.setContentType("text/html");  
         out.println("<html><body>"); 
         
		try {
			
			
			Connection con = DbConnect.getConnection();
			String sql ="select * from select_tab";
			PreparedStatement pstmt = con.prepareStatement(sql); 
			ResultSet rs = pstmt.executeQuery(sql);
			out.println("<table border=1 width=50% height=50%>");
			 out.println("<tr><th>Name</th><th>Phone</th><th>Address</th><th>Cake_Flavour</th><th>Cake_Unit</th><th>Delivery_Date</th><th>Time</th></tr>");
				while(rs.next()){
					String name = rs.getString("name");
					String phone = rs.getString("phone");
					String address = rs.getString("address");
					String cakeFlavour = rs.getString("flavour");
					String cakeUnit = rs.getString("cake_unit");
					Date orderDate = rs.getDate("orderdate");
					String time = rs.getString("dtime");
					 out.println("<tr><td>" + name + "</td><td>" + phone + "</td><td>" + address + "</td><td>" + cakeFlavour + "</td><td>" + cakeUnit + "</td><td>" + orderDate + "</td><td>" + time + "</td></tr>");
				}//while
				 out.println("</table>");  
	             out.println("</html></body>");  
	             con.close();  
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
