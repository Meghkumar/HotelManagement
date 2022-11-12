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
<link rel="stylesheet" href="/HotelManagement/CssFiles/accomodation.css" />
<!-- CSS Links End-->

<title>Accomodation</title>
</head>

<!-- -------------------------------------------------------------------------------- -->
<body>
	<!-- Navbar start -->
	<!-- Navbar  -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3">
		<div class="container">
			<div class="loginName h5"
				style="color: white; text-transform: capitalize;">
				<%
				String accoName = (String) session.getAttribute("loginname");
				%>
				<%
				out.println("Welcome " + accoName);
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
						href="#rooms">Our Rooms</a></li>
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

    <!-- background image start -->

	<div class="background-image" id="accomodation">
		<div class="overlay">
			<h1 style="font-size: 50px">
				LUXURY ACCOMMODATION & SUITES <br /> IN LONAVALA
			</h1>
			<p>Reserve your stylish room or suite at The Cordial Host</p>
			<svg class="arrows">
          <a href="#rooms">
            <path class="a1" d="M0 0 L30 32 L60 0"></path>
            <path class="a2" d="M0 20 L30 52 L60 20"></path>
            <path class="a3" d="M0 40 L30 72 L60 40"></path>
          </a>
        </svg>
		</div>
	</div>

	<!-- Main page Description end -->

	<!-- Dinning Explore -->
	<div>
		<div id="rooms">
			<div id="header">
				<section class="section1">
					<div class="dinning_container">
						<div class="left1"></div>
						<div class="right1">
							<div class="content">
								<h1>ROOMS</h1>
								<p>Generous rooms offer ample space to relax in our
									captivating The Cordial Host Hotel. Your private balcony
									reveals breathtaking views of Table Mountain, our magnificent
									Tiger Hill, or both.</p>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>

	<div id="dinning2">
		<a href="#dinning2"></a>
		<div id="header2">
			<section class="section2">
				<div class="dinning_container2">
					<div class="left2"></div>
					<div class="right2">
						<div class="content2">
							<h1>SUITES</h1>
							<p>Reconnect with family and friends in Lonavala largest
								suites, the perfect base from which to explore our vibrant city.
								All of our suites have spacious terraces offering mesmerising
								views.</p>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<div id="dinning3">
		<a href="#dinning3"></a>
		<div id="header3">
			<section class="section3">
				<div class="dinning_container3">
					<div class="left3"></div>
					<div class="right3">
						<div class="content3">
							<h1>TABLE MOUNTAIN SUITE</h1>
							<p>Legendary. Awe-inspiring. Idyllic. The Cordial Host Table
								Mountain Suite treats you to remarkable vistas of Lonaval
								majestic icon, a mesmerising view from your peaceful terrace in
								Host Rise. Both grandly spacious and delightfully intimate, our
								exclusive suite ensures your complete comfort, whether you
								choose to unwind in privacy or entertain friends and family.
								With every detail attended to by your around-the-clock personal
								butler, this exquisitely oversized suite can play host to
								special dinners, meetings and other private events.</p>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<div id="dinning4">
		<a href="#dinning4"></a>
		<div id="header4">
			<section class="section4">
				<div class="dinning_container4">
					<div class="left4"></div>
					<div class="right4">
						<div class="content4">
							<h1>PRESIDENTIAL SUITE</h1>
							<p>Discover the unfettered privilege of Lonaval most desired
								address. A celebration of modern Maharashtra style and
								breathtaking beauty, our one-of-a-kind Presidential Suite will
								captivate you with its large living area, two spacious bedrooms
								and uninterrupted Cape Town views. Generous open-air terraces
								envelop your suite, revealing the pure majesty of Mountain.
								Perfect for families and groups of friends, here you can truly
								relax, with every wish fulfilled by your personal The Cordial
								Host butler</p>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<div id="dinning5">
		<a href="#dinning5"></a>
		<div id="header5">
			<section class="section5">
				<div class="dinning_container5">
					<div class="left5"></div>
					<div class="right5">
						<div class="content5">
							<h1>THE ONE ABOVE PENTHOUSES</h1>
							<p>The One Above Penthouses are Lonavala's ultimate
								accommodation collection offering a choice for the discerning
								traveller of two penthouses, The Tiger Hill and The Lion's hill,
								for those who understand and appreciate luxury and attention to
								detail. The collection is perfect for business or pleasure, for
								families of all ages or friends travelling together.</p>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>


	<!-- ************footer****************** -->

	<div class="mainfooter" style="margin-top: 12.5rem">
		<jsp:include page="mainfooter.jsp"></jsp:include>
	</div>

	<!-- ************footer****************** -->




	<!-- CARD  -->

	<!-- JS Links Start -->
	<script src="../HotelManagement/JS/accomodation.js"></script>
	<!-- JS Links End-->

	<!-- Bootstrap 5 Start-->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Bootstrap 5 End-->
</body>
</html>

