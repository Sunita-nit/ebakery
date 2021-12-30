<%@page import="com.bo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<title>Document</title>
</head>

<body>


	<!-- navigation starts -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<a href="index.jsp" class="navbar-brand">MyBakery</a>

		<div class="collpase navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<!-- <li class="nav-item active"><a href="#" class="nav-link">View</a></li> 
				
				
			<%User currentSessionUser = (User)(session.getAttribute("currentUser"));%>
			<p style="font-size: 14px; color: #ffffff; opacity: 1 !important; padding-top: 0.8rem; padding-bottom: 0.8rem; padding-left: 20px; padding-right: 20px; font-weight: 400;">
			Welcome
			<%=currentSessionUser.getName()%>
			</p>

				<li class="nav-item"><a href="LogoutServlet" class="nav-link">Logout</a></li>


			</ul>
		</div>
	</div>
	</nav>
	<!-- navigation ends -->


</body>
</html>