<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.cordialHost.servlet.LoginServlet"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->

<!-- CSS Links Start -->
<link rel="stylesheet" href="/HotelManagement/CssFiles/dinning.css" />
<!-- CSS Links End-->

<title>Dinning</title>
</head>

<body>
	<!-- Navbar start -->
	<!-- Navbar  -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3">
		<div class="container">
			<div class="loginName h5"
				style="color: white; text-transform: capitalize;">
				<%
				String dinningName = (String) session.getAttribute("loginname");
				%>
				<%
				out.println("Welcome " + dinningName);
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
						href="#dinning">Our Dinning</a></li>
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



	<!-- ******************************************************************* -->
	<!-- Background Image -->
	<!-- ******************************************************************* -->

	<div class="background-image" id="accomodation">
		<div class="overlay">
			<h1 style="font-size: 50px">
				Come experience our authentic cuisine<br /> IN LONAVALA
			</h1>
			<p>Experience a classic restaurant.</p>

		</div>
	</div>

	<!-- ******************************************************************* -->
	<!-- Dinning part -->
	<!-- ******************************************************************* -->

	<div id="dinning">
		<a href="#dinning"></a>
		<div id="header">
			<div>
				<img src="/HotelManagement/Images/dinning/cook.jpg" alt="" />
			</div>
			<span class="header-text">We Offer</span>
			<div class="company-header">WORLD CLASS DINING</div>
		</div>
		<!-- <article class="box2 home-text home-welcome">
        <h1>A Captivating Mountain Front Hotel in Lonavala</h1> -->

		<div class="firstpara">
			<!-- <div class="column1">
          The Cordial Host have variety of cuisines and bars sparkle with the unmistakable vibrancy of Lonavala. Savour exceptional cuisine and rare wines in the most stylish spaces in town – a thrilling taste of the city’s diverse culinary landscape.
          </div> -->
		</div>
		<div class="clear">&nbsp;</div>
	</div>

	<!-- ******************************************************************* -->
	<!-- Card Container -->
	<!-- ******************************************************************* -->

	<!-- CARD  -->
	<link
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous" />

	<div class="container">
		<div class="row">
			<div class="card-wrapper col-lg-4 col-md-6 col-xs-12">
				<div class="card">
					<div class="card-img-wrapper">
						<img class="card-img-top"
							src="/HotelManagement/Images/dinning/bar.jpg"
							alt="Card image cap" />
					</div>
					<div class="card-body">
						<h5 class="card-title"
							style="font-weight: 100; color: #aaa100; font-size: 35px">
							BAR AND LOUNGE</h5>
						<p class="card-text">The stylish heart of our hotel, Vista Bar
							and Lounge’s eclectic drinks, live entertainment and unfettered
							mountain views are renowned in Lonavala. Indulge in afternoon
							tea, and by night, let our expert mixologists personalise your
							cocktail.</p>
						<a href="orders.jsp" class="btn btn-dark" style="color: goldenrod">Explore</a>
					</div>
				</div>
			</div>
			<div class="card-wrapper col-lg-4 col-md-6 col-xs-12">
				<div class="card">
					<div class="card-img-wrapper">
						<img class="card-img-top"
							src="/HotelManagement/Images/dinning/wine.jpg"
							alt="Card image cap" />
					</div>
					<div class="card-body">
						<h5 class="card-title"
							style="font-weight: 100; color: #aaa100; font-size: 40px">
							WINE STUDIO</h5>
						<p class="card-text">With almost 700 references,The Cordial
							Host features one of the most balanced and diverse wine
							collections on the continent. The Wine Studio is a sleek and
							sophisticated space showcasing a sampling of the resort’s
							impressive offering and is where guests can enjoy sensational
							wine journeys.</p>
						<a href="orders.jsp" class="btn btn-dark" style="color: goldenrod">Explore</a>
					</div>
				</div>
			</div>
			<div class="card-wrapper col-lg-4 col-md-6 col-xs-12">
				<div class="card">
					<div class="card-img-wrapper">
						<img class="card-img-top"
							src="/HotelManagement/Images/dinning/privateDinning.jpg"
							alt="Card image cap" />
					</div>
					<div class="card-body">
						<h5 class="card-title"
							style="font-weight: 100; color: #aaa100; font-size: 40px">
							PRIVATE DINING</h5>
						<p class="card-text">Anything is possible when you co-create
							with The Cordial Host private dining team. Under their expert
							eye, your dream dining experience will be seamlessly fulfilled to
							your exact vision.</p>
						<a href="orders.jsp" class="btn btn-dark" style="color: goldenrod">Explore</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- ************footer****************** -->

	<div class="mainfooter" style="margin-top: 12.5rem">
		<jsp:include page="mainfooter.jsp"></jsp:include>
	</div>

	<!-- ************footer****************** -->

	<!-- JS Links Start -->
	<script src="/HotelManagement/JS/dinning.js"></script>
	<!-- JS Links End-->

	<!-- Bootstrap 5 Start-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<!-- Bootstrap 5 End-->
</body>
</html>
