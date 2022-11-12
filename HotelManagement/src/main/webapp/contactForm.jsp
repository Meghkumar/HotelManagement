<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<link rel="stylesheet" href="/HotelManagement/CssFiles/contactForm.css" />

<title>Contact Form</title>
</head>
<body>
	<section>
		<div class="contact-container">
			<div class="form-container">
				<h3>Message Us</h3>
				<form action="" class="contact-form">
					<input type="text" name="contactName" id="" placeholder="Your Name"
						required /> <input type="email" name="contactemail" id=""
						placeholder="Your email" required />
					<textarea name="" id="" cols="30" rows="10"
						placeholder="Write your Message here">
            </textarea>
					<input type="submit" value="send" class="send-button" />
				</form>
			</div>
			<div class="map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3778.443000110503!2d73.42761324949326!3d18.733739267449263!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be80189d1998db9%3A0xf295300d9c2ea0f1!2sThe%20Cordial%20Host!5e0!3m2!1sen!2sin!4v1667885601872!5m2!1sen!2sin"
					style="border: 0" allowfullscreen="" loading="lazy"
					referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
		</div>
	</section>

	<!-- Bootstrap 5 Start-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<!-- Bootstrap 5 End-->
</body>
</html>
