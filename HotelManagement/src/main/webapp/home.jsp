<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cordialHost.servlet.LoginServlet"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->


<link rel="stylesheet" type="text/css"
	href="../HotelManagement/CssFiles/home.css" />

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&family=Roboto+Slab:wght@300&display=swap"
	rel="stylesheet" />


<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.css" />


</head>
<body>
	<!-- Navbar start -->
	<!-- Navbar  -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3">
		<div class="container">
			<div class="loginName h5"
				style="color: white; text-transform: capitalize;">
				<%
				String username = request.getParameter("loginname");
				session.setAttribute("loginname", username);
				
				%>
				<%
				out.println("Welcome " + username);
				%>
			</div>

			<!-- <a class="navbar-brand h3"
				href="/HotelManagement/Jsp/MainPage/home.jsp">The Cordial Host</a> -->

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<div class="mx-auto"></div>
				<ul class="navbar-nav">
					<li class="nav-item"><a id="navtext"
						class="nav-link text-white h5" href="#home">Home</a></li>
					<li class="nav-item"><a class="nav-link text-white h5"
						href="#about">About us</a></li>
					<li class="nav-item"><a class="nav-link text-white h5"
						href="accomodation.jsp">Accomodation</a></li>
					<li class="nav-item"><a class="nav-link text-white h5"
						href="dinning.jsp">Dinning</a></li>
					<li class="nav-item"><a class="nav-link text-white h5"
						href="activities.jsp">Activities</a></li>
					<li class="nav-item"><a class="nav-link text-white h5"
						href="#">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navbar end -->

	<!--*****************************************************************************************-->
	<!--slider start-->
	<!--*****************************************************************************************-->

	<div class="hero-slider" data-carousel id="home">
		<div class="carousel-cell"
			style="background-image: url('/HotelManagement/Images/home/image1.jpg');">
			<div class="overlay"></div>
			<div class="inner">
				<h3 class="subtitle">Lonavala's</h3>
				<h2 class="title">Best Mountain View Hotel</h2>
				<a href="#about" class="btn">Tell me more</a>
			</div>
		</div>

		<div class="carousel-cell"
			style="background-image: url('/HotelManagement/Images/home/image5.jpg')">
			<div class="overlay"></div>
			<div class="inner">
				<h3 class="subtitle">We Have</h3>
				<h2 class="title">Spacious Rooms and Suite</h2>
				<a href="accomodation.jsp" class="btn">Tell me more</a>
			</div>
		</div>

		<div class="carousel-cell"
			style="background-image: url('/HotelManagement/Images/home/image3.jpg')">
			<div class="overlay"></div>
			<div class="inner">
				<h3 class="subtitle">Relish irresistible cuisine</h3>
				<h2 class="title">Signature Dining</h2>
				<a href="dinning.jsp" class="btn">Tell me more</a>
			</div>
		</div>

	</div>
	</div>

	<!--*****************************************************************************************-->
	<!--slider start-->
	<!--*****************************************************************************************-->


	<!-- abouts Content start-->
	<div id="about">
		<a href="#about"></a>
		<div id="header">
			<div>
				<img src="/HotelManagement/Images/home/mountain.jpg" alt="" />
			</div>
			<span class="header-text">Welcome to</span>
			<div class="company-header">The Cordial Host</div>
		</div>
		<article class="box2 home-text home-welcome">
			<h1>A Captivating Mountain Front Hotel in Lonavala</h1>

			<div class="firstpara">
				<div class="column1">Escape to relax on a captivating Mountain
					front retreat at The cordial Host .With a gorgeous private swimming
					pool, globally-inspired restaurants, rooms with private balconies,
					and stylish event venues, our hotel offers an ideal destination for
					business and leisure travelers visiting Lonavala.</div>

				<div class="column2">From dining to sweeping views of the
					Sahyadri mountains, our hotel invites you to unwind and enjoy a
					tranquil retreat along Tiger hill. Find yourself minutes from the
					Lohagad Fort, local nightlife, cultural sights, and attractions
					like the Wax Museums and Pawana lake camping.</div>
			</div>

			<div class="clear">&nbsp;</div>
		</article>

	</div>

	<!-- ************footer****************** -->
	<div class="mainfooter" style="margin-top: 12.5rem">
		<%@include file="mainfooter.jsp"%>
	</div>
	<!-- ************footer****************** -->

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js"></script>

	<script type="text/javascript" src="/HotelManagement/JS/home.js"></script>

	<!-- Bootstrap 5 Start-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>


</html>

