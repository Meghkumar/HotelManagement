<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.cordialHost.servlet.LoginServlet"%>
<!DOCTYPE html>
<html>
<head>
<title>Activites</title>

<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->

<link rel="stylesheet" type="text/css"
	href="../HotelManagement/CssFiles/activities.css" />

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
				String activityName = (String) session.getAttribute("loginname");
				%>
				<%
				out.println("Welcome " + activityName);
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
						class="nav-link text-white h5" href="home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link text-white h5"
						href="#content">NearBy Places</a></li>
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
	<div class="main">
		<div class="hero-slider" data-carousel
			style="background-attachment: fixed">
			<div class="carousel-cell" id="image1">
				<div class="overlay"></div>
				<div class="inner">
					<h3 class="subtitle">Waterfall</h3>
					<h2 class="title">Khandala Waterfall</h2>
					<a href="#" class="btn">Tell me more</a>
				</div>
			</div>

			<div class="carousel-cell" id="image2">
				<div class="overlay"></div>
				<div class="inner">
					<h3 class="subtitle">Camping</h3>
					<h2 class="title">Pawana Lake Camping</h2>
					<a href="#" class="btn">Tell me more</a>
				</div>
			</div>

			<div class="carousel-cell" id="image3">
				<div class="overlay"></div>
				<div class="inner">
					<h3 class="subtitle">Forts</h3>
					<h2 class="title">Lohagad Fort</h2>
					<a href="#" class="btn">Tell me more</a>
				</div>
			</div>
		</div>
	</div>
	<!--*****************************************************************************************-->
	<!--slider start-->
	<!--*****************************************************************************************-->

	<!-- activity Content start-->

	<div class="info" id="content">
		<div class="container my-4">
			<div
				class="row featurette d-flex justify-content-center align-items-center">
				<div class="col-md-7">
					<h2 class="featurette-heading" style="color: #937100">
						Khandala Waterfall <span class="text-muted"></span>
					</h2>
					<p class="lead"
						style="color: #808080; font-family: Arial, Helvetica, sans-serif">
						Kune Falls is one of the most beautiful tourist spots in Khandala.
						It is located centrally within the Lonavala Khandala valley. The
						Kune Falls is worth admiring. The Kune Falls is surrounded by lush
						green vegetation. People often hold picnics around the region of
						the falls. Innumerable number of tourists from various parts of
						the country visit this famous site annually. The waterfall is
						divided into 2 sections. Every part of the falls is almost 100
						meters high.</p>
				</div>
				<div class="col-md-5">
					<img class="img-fluid" img=""
						src="Images/activities/waterrappling.JPG" width="500" height="500"
						xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 500x500"
						preserveaspectratio="xMidYMid slice" focusable="false" />
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#eee"></rect>
					<text x="50%" y="50%" fill="#aaa" dy=".3em"></text>
				</div>
			</div>

			<div
				class="row featurette d-flex justify-content-center align-items-center ml-4">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading" style="color: #937100">
						Pawana Lake Camping <span class="text-muted"></span>
					</h2>
					<p class="lead"
						style="color: #808080; font-family: Arial, Helvetica, sans-serif">
						Based on the banks of Pawna lake, the campsite is set amidst lush
						greenery & mountains Witness the mystic valleys of the Western
						Ghats from your well-facilitated tents Enjoy with your favorite
						tunes during live acoustic session & Dj night with your squad
						Enjoy holi party with organic colors along with a Rain Dance on
						booking particular option Grab delicious barbeque snacks in the
						evening during a bonfire session</p>
				</div>

				<div class="col-md-5 order-md-1">
					<img class="img-fluid" img="" src="Images/activities/camping.jpg"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg"
						role="img" aria-label="Placeholder: 500x500"
						preserveaspectratio="xMidYMid slice" focusable="false" />
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#eee"></rect>
					<text x="50%" y="50%" fill="#aaa" dy=".3em"></text>
				</div>
			</div>

			<div
				class="row featurette d-flex justify-content-center align-items-center ml-4">
				<div class="col-md-7 order-md-1">
					<h2 class="featurette-heading" style="color: #937100">
						Lohagad Fort <span class="text-muted"></span>
					</h2>
					<p class="lead"
						style="color: #808080; font-family: Arial, Helvetica, sans-serif">
						Lohagad has a long history with several dynasties occupying it at
						different periods of time: Satavahanas, Chalukyas, Rashtrakutas,
						Yadavas, Bahamanis, Nizams, Mughals and Marathas. Chatrapati
						Shivaji Maharaj captured it in 1648 AD, but he was forced to
						surrender it to the Mughals in 1665 AD by the Treaty of Purandar.
						Chatrapati Shivaji Maharaj recaptured the fort in 1670 AD and used
						it for keeping his treasury. This fort was used to keep the
						winnings from Surat. Later in Peshwa time Nana Phadnavis used this
						fort for living for some time and built several structures in the
						fort such as a big tank and a step-well.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="img-fluid" img="" src="Images/activities/lohagad.jpg"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg"
						role="img" aria-label="Placeholder: 500x500"
						preserveaspectratio="xMidYMid slice" focusable="false" />
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#eee"></rect>
					<text x="50%" y="50%" fill="#aaa" dy=".3em"></text>
				</div>
			</div>
		</div>
	</div>

	<!-- ************footer****************** -->

	<div class="mainfooter" style="margin-top: 13.5rem">
		<jsp:include page="mainfooter.jsp"></jsp:include>
	</div>

	<!-- ************footer****************** -->

	<!-- activity Content start-->

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js"></script>

	<script type="text/javascript" src="/HotelManagement/JS/activities.js"></script>

	<!-- Bootstrap 5 Start-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
