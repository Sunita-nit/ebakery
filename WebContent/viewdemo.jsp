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
<title>admin view</title>
</head>

<body>


	<!-- navigation starts -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<a href="index.jsp" class="navbar-brand">MyBakery</a>
		<%
			User currentSessionUser = (User) (session
					.getAttribute("currentUser"));
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
	<!-- navigation ends -->

	<!-- slider  section start -->
	<section class="home-slider owl-carousel js-fullheight">
	<div class="slider-item js-fullheight"
		style="background-image: url(images/bg_1.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row slider-text js-fullheight justify-content-center align-items-center"
				data-scrollax-parent="true">

				<div class="col-md-12 col-sm-12 text-center ftco-animate">
					<span class="subheading">MyBakery</span>
					<h1 class="mb-4">Birthday Cake</h1>
				</div>

			</div>
		</div>
	</div>

	<div class="slider-item js-fullheight"
		style="background-image: url(images/bg_2.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row slider-text js-fullheight justify-content-center align-items-center"
				data-scrollax-parent="true">

				<div class="col-md-12 col-sm-12 text-center ftco-animate">
					<span class="subheading">MyBakery</span>
					<h1 class="mb-4">Wedding Cake</h1>
				</div>

			</div>
		</div>
	</div>

	<div class="slider-item js-fullheight"
		style="background-image: url(images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row slider-text js-fullheight justify-content-center align-items-center"
				data-scrollax-parent="true">

				<div class="col-md-12 col-sm-12 text-center ftco-animate">
					<span class="subheading">MyBakery</span>
					<h1 class="mb-4">MyBakery Special Dessert</h1>
				</div>

			</div>
		</div>
	</div>

	<div class="slider-item js-fullheight"
		style="background-image: url(images/bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row slider-text js-fullheight justify-content-center align-items-center"
				data-scrollax-parent="true">

				<div class="col-md-12 col-sm-12 text-center ftco-animate">
					<span class="subheading">MyBakery</span>
					<h1 class="mb-4">MyBakery Special Pastries</h1>
				</div>

			</div>
		</div>
	</div>
	</section>
	<!-- slider  section end  -->

	<!-- featured section starts  -->
	<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="featured">
					<div class="row">
						<div class="col-md-3">
							<div class="featured-menus ftco-animate">
								<div class="menu-img img"
									style="background-image: url(images/b1.jpg);"></div>
								<div class="text text-center">
									<h3>Desert</h3>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="featured-menus ftco-animate">
								<div class="menu-img img"
									style="background-image: url(images/b2.jpg);"></div>
								<div class="text text-center">
									<h3>Chocolate Cake</h3>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="featured-menus ftco-animate">
								<div class="menu-img img"
									style="background-image: url(images/b3.jpg);"></div>
								<div class="text text-center">
									<h3>Pastry</h3>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="featured-menus ftco-animate">
								<div class="menu-img img"
									style="background-image: url(images/b4.jpg);"></div>
								<div class="text text-center">
									<h3>Donuts</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!-- featured section ends  -->




	

	<!-- footer section starts -->
	<section class="ftco-footer ftco-bg-dark ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-6 col-lg-3">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">MyBakery</h2>
					<p>
						We serve and take all type of cake orders. You can personalised
						cake of your own choice. We have the best chef in the city working
						for us and happying serving to you. <br> <br> <br>
						mybakery14@gmail.com <br> 8292346890
					</p>
					<ul
						class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
						<li class="ftco-animate"><a href="#"><span
								class="fa fa-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="fa fa-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="fa fa-instagram"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Open Hours</h2>
					<ul class="list-unstyled open-hours">
						<li class="d-flex"><span>Monday</span><span>10 am - 10
								pm</span></li>
						<li class="d-flex"><span>Tuesday</span><span>10 am- 10
								pm</span></li>
						<li class="d-flex"><span>Wednesday</span><span>10 am -
								10 pm</span></li>
						<li class="d-flex"><span>Thursday</span><span>10 am -
								10 pm</span></li>
						<li class="d-flex"><span>Friday</span><span>10 am - 10
								pm</span></li>
						<li class="d-flex"><span>Saturday</span><span>10 am -
								2 pm</span></li>
						<li class="d-flex"><span>Sunday</span><span> 10 am - 2
								pm</span></li>
					</ul>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Instagram</h2>
					<div class="thumb d-sm-flex">
						<a href="#" class="thumb-menu img"
							style="background-image: url(images/insta-1.jpg);"></a> <a
							href="#" class="thumb-menu img"
							style="background-image: url(images/insta-2.jpg);"></a> <a
							href="#" class="thumb-menu img"
							style="background-image: url(images/insta-3.jpg);"></a>
					</div>
					<div class="thumb d-sm-flex">
						<a href="#" class="thumb-menu img"
							style="background-image: url(images/insta-4.jpg);"></a> <a
							href="#" class="thumb-menu img"
							style="background-image: url(images/insta-5.jpg);"></a> <a
							href="#" class="thumb-menu img"
							style="background-image: url(images/insta-6.jpg);"></a>
					</div>
				</div>
			</div>

		</div>
	</div>
	</section>



	<!-- footer section ends -->





	<!-- scripts -->

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<!-- <script src="js/bootstrap-datepicker.js"></script>
	  -->
	<script src="js/jquery.timepicker.min.js"></script>

	<script src="js/scrollax.min.js"></script>
	<script src="main.js"></script>
</body>

</html>