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
		<%
			User currentSessionUser = (User) (session
					.getAttribute("currentUser"));
		%>
		<%=currentSessionUser.getName()%>



	<div class="collpase navbar-collapse" id="ftco-nav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a href="#" class="nav-link">Home</a></li>
			<li class="nav-item"><a href="#about" class="nav-link">About</a></li>
			<li class="nav-item"><a href="#gallery" class="nav-link">Gallery</a></li>
			<li class="nav-item"><a href="#menu" class="nav-link">Menu</a></li>
			<li class="nav-item"><a href="order.jsp" class="nav-link">Order
					Now</a></li>
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


	<!-- about us section starts  -->

	<section class="ftco-wrap-about" id="about">
	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="intro_content">
						<div class="intro_subtitle page_subtitle">About Us</div>
						<div class="intro_title">
							<h2>Beautiful Story</h2>
						</div>
						<div class="intro_text">
							<p>My bakery is a bakery where you can find delicious cakes,
								pastries ,cookies etc.We provide you the best tasty and
								delicious bakery products which are available at reasonable
								price .Safety and hygine matters a lot so we always take of
								that.We deliver across the city.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-md-6 intro_col">
							<div class="intro_image">
								<img src="images/2.jpg" alt="intro"> <img
									src="images/Chocolate_Cake.jpg" style="height: 290px">
							</div>
						</div>
						<div class="col-xl-4 col-md-6 intro_col">
							<div class="intro_image">
								<img src="images/intro_2.jpg" alt="intro">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>



	<!-- about us section ends  -->

	<!-- gallery section starts  -->
	<section class="ftco-section bg-light" id="gallery">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title normal-title">
					<div class="row justify-content-center mb-5 pb-2">
						<div class="col-md-12 text-center heading-section ftco-animate">
							<span class="subheading">Gallery</span>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish1.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish2.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish3.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish4.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish5.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish6.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish7.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-6 p-0">
				<div class="gallery__pic">
					<img src="images/dish8.jpg" alt="">
				</div>
			</div>
		</div>
	</div>


	</section>
	<!-- gallery section ends  -->

	<!-- menu section starts -->
	<section class="ftco-section" id="menu">
	<div class="container-fluid px-4">
		<div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-7 text-center heading-section ftco-animate">
				<span class="subheading">Specialities</span>
				<h2 class="mb-4">Menu</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6 col-lg-4 menu-wrap">
				<div class="heading-menu text-center ftco-animate">
					<h3>Cakes</h3>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu1.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Strawberry</h3>
							</div>
							<div class="one-forth">
								<span class="price">400</span>
							</div>
						</div>
					</div>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu2.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Chocolate Cake</h3>
							</div>
							<div class="one-forth">
								<span class="price">399</span>
							</div>
						</div>

					</div>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu3.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Red  Velvet</h3>
							</div>
							<div class="one-forth">
								<span class="price">500</span>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 menu-wrap">
				<div class="heading-menu text-center ftco-animate">
					<h3>Wedding Cake</h3>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu4.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Pineapple</h3>
							</div>
							<div class="one-forth">
								<span class="price">450</span>
							</div>
						</div>

					</div>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu5.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Vanila Cake</h3>
							</div>
							<div class="one-forth">
								<span class="price">400</span>
							</div>
						</div>

					</div>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu6.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Cookies</h3>
							</div>
							<div class="one-forth">
								<span class="price">400</span>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 menu-wrap">
				<div class="heading-menu text-center ftco-animate">
					<h3>Pastries</h3>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu7.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Blackberries</h3>
							</div>
							<div class="one-forth">
								<span class="price">400</span>
							</div>
						</div>

					</div>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu8.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Orange</h3>
							</div>
							<div class="one-forth">
								<span class="price">400</span>
							</div>
						</div>

					</div>
				</div>
				<div class="menus d-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(images/menu9.jpg);"></div>
					<div class="text">
						<div class="d-flex">
							<div class="one-half">
								<h3>Mango</h3>
							</div>
							<div class="one-forth">
								<span class="price">400</span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- menu section ends -->



	

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