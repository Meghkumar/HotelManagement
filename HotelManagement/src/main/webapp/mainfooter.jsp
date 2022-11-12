<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../HotelManagement/CssFiles/mainfooter.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Footer</title>
</head>

<body>

	<section class="footer">
	<%@include file="clock.jsp"%>
		<div class="social">
			
			<a href="https://www.instagram.com/"><i
				class="fa-brands fa-instagram"></i></a> <a
				href="https://www.facebook.com/"><i
				class="fa-brands fa-facebook-f"></i></a> <a
				href="https://www.snapchat.com/"> <i
				class="fa-brands fa-snapchat"></i></a> <a
				href="https://twitter.com/?lang=en-in"> <i
				class="fa-brands fa-twitter"></i></a>
		</div>

		<ul class="list">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="home.jsp">About us</a></li>
			<li><a href="accomodation.jsp">Accomodation</a></li>
			<li><a href="dinning.jsp">Dinnning</a></li>
			<li><a href="activities.jsp">Activities</a></li>
			<li><a href="contactForm.jsp">Contact Us</a></li>
		</ul>
		<p class="copywrite">Meghkumar Kapale @2022</p>


	</section>
</body>
</html>

