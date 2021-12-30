<%@page import="java.sql.Statement"%>
<%@page import="com.bo.User"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.db.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view orders</title>
<link
	href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet"
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="style.css">
<style>
body{
	background:url("images/dish7.jpg");
	background-position:inherit;
	background-repeat:no-repeat;
	background-size:cover; 	
	opacity:0.9;
}
table{
	margin-top:10%;
	background-color: white;
	width:800px;
	height:100px;
	border-style: dashed;
	border-width:medium;
	border-color:#ff5e81; 
	color:black;
	margin-top:3%;
}
tr th:hover{
		background-color: #ff5e81;
}
tr td:hover{
	background-color: #86ff70;
}

</style>


</head>
<body >
<!-- navigation starts -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<a href="index.jsp" class="navbar-brand">MyBakery</a>
		<%
			User currentSessionUser = (User) (session.getAttribute("currentUser"));
		%>
		<%=currentSessionUser.getName()%>



	<div class="collpase navbar-collapse" id="ftco-nav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="viewUser.jsp" class="nav-link">View User</a></li>
			<li class="nav-item"><a href="view.jsp" class="nav-link">View Orders</a></li>
			<li class="nav-item"><b>

					<p
						style="font-size: 14px; color: #ffffff; opacity: 1 !important; padding-top: 0.8rem; padding-bottom: 0.8rem; padding-left: 20px; padding-right: 20px; font-weight: 400;">
						Welcome
						<%=currentSessionUser.getName()%>
					</p>
			</b> <br></li>


			<li class="nav-item"><a href="LogoutServlet" class="nav-link">Logout</a></li>


		</ul>
	</div>
	</div>
	
	</nav>
	<br><br><br>
<center>
<div style="margin-top:5%;background-color: #ff5e81;height:50px;"><h2>ALL ORDERS</h2></div>
	<table border="1">
		<tr>

			<th>Name</th>
			<th>Phone</th>
			<th>Address</th>
			<th>Time</th>
			<th>Cake_Flavour</th>
			<th>Delivery_Date</th>
			<th>Cake_Unit</th>

		</tr>
		<%
			//String name= request.getParameter("name");
			try {
				Connection con = DbConnect.getConnection();
				String sql = "select * from select_tab";

				//PreparedStatement pstmt = con.prepareStatement(sql); 
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
		%>
		<tr>
			
				<%
					String name = rs.getString("name");
				%>	
				<td><%=name%></td>
				

				<%
					String phone = rs.getString("phone");
				%>
				<td><%=phone%></td>
				
				<%
					String address = rs.getString("address");
				%>
				<td><%=address%></td>
				<%
					String dtime = rs.getString("dtime");
				%>
				<td><%=dtime%></td>
				<%
					String flavour = rs.getString("flavour");
				%>
					<td><%=flavour%></td>
				<%
					Date orderDate = rs.getDate("orderdate");
				%>
				<td><%=orderDate%></td>

				<%
					String cake_unit = rs.getString("cake_unit");
				%>
				<td><%=cake_unit%></td>
	
		</tr>
			
			
		
			
		<%
			}//end while
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>

	</table>
</center>
</body>

</html>