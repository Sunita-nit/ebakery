<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.bo.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>insert menu </title>
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
fieldset{
	background-color:navy;
	margin-top:3%;
	height:200px;
}
button:hover{
	background-color: green;
}
</style>
</head>
<body>
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
			<li class="nav-item"><a href="mymenu.jsp" class="nav-link">Menu</a></li>
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
<center><br><br><br>
<center>
<div style="margin-top:5%;background-color: #ff5e81;height:50px;"><h2>ADD MENU</h2></div><fieldset>

<form  method="post" action="MyMenuServlet" enctype="multipart/form-data">
<center style="font-weight:bolder;font-size:40px;color: navy;  ">ADD</center>
    <div class="container">
      <label><b>Name_Of_Cake</b></label>
      <input type="text" placeholder="Enter cake name" name="name" required>

      <label><b>Price</b></label>
      <input type="text" placeholder="Enter Price" name="price" required>
      <label>Image</label>
      <input type="file" name="myimg"><br><br>
	<button type="submit">Update</button>
    
    </div>
</center>
</body>
</html>