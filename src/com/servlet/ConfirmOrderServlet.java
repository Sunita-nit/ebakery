package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DbConnect;

public class ConfirmOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConfirmOrderServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con = DbConnect.getConnection() ;
			String sql ="insert into select_tab(name,phone,address,dtime,flavour,orderDate,cake_unit)values(?,?,?,?,?,?,?)";
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String pick_up_time = request.getParameter("pick_up_time");
			String flavour = request.getParameter("flavour");
			PreparedStatement pstmt = con.prepareStatement(sql);
			//pstmt.setString(1, request.getParameter("name"));
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			pstmt.setString(3, address);
			pstmt.setString(4, pick_up_time);
			pstmt.setString(5, flavour);
			
			
			String orderDate = request.getParameter("delivery_date");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			long l = sdf.parse(orderDate).getTime();
			Date dateOrder = new Date(l);
			
			pstmt.setDate(6, dateOrder);
			
			String cake_unit = request.getParameter("cake_unit");
			//String price = request.getParameter("price");
			pstmt.setString(7,cake_unit);
		
			
			pstmt.executeUpdate();
			
			response.setContentType("text/html");
			//HttpSession session = request.getSession(false);
			//String myName = (String) session.getAttribute("username");
			StringBuilder htmlCode = new StringBuilder("");
			htmlCode.append("<html>");
			htmlCode.append("<head>");
			htmlCode.append("</head>");
			
			htmlCode.append("<body style='background:url(images/Chocolate_Cake.jpg);'>");
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("<center>");
			htmlCode.append("<fieldset style='width:360px;height:320px;background-color:white;color:green;font-weight:bolder;font-size:20px;'>");
		
			htmlCode.append("Name : " + name);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("Contact No : " + phone);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("Cake to delivered at  : " + address);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("Pick_Up_Time : " + pick_up_time);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			
			htmlCode.append("Cake_Flavour : " + flavour);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("Order_Date : " + dateOrder);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("Price : " + cake_unit);
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			
			htmlCode.append("</fieldset>");
				
			
			htmlCode.append("<br>");
			htmlCode.append("<br>");
			htmlCode.append("<fieldset style='background-color:yellow;width:360px;height:130px;'>");
			htmlCode.append("<h2 style='color:green;'>Select Payment : COD<input type='radio'</h2><br><br>");
			htmlCode.append("<br>");
			htmlCode.append("<button style='background-color:green;font-weight:bolder;font-size:20px;'><a href='successBuy.jsp' style='text-decoration:none';font-color:black;>Confirm Order</a></button>");
			htmlCode.append("</center>");
			htmlCode.append("</body>");
			htmlCode.append("</html>");
			
			System.out.println("Successfully Updated");
			
			//response.sendRedirect("confirm.jsp");
			
			PrintWriter pw = response.getWriter();
			pw.print(htmlCode);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	
		
		
			
		
	}

}
