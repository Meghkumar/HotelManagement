<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="CssFiles/register.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<title>Register Form</title>
</head>
<body>
	<div class="container">
		<form method="get" autocomplete="on" action="register1">


			<!--Second name-->
			<div class="box">
				<label for="Name" class="fl fontLabel"> Name: </label>
				<div class="fl iconBox">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="text" required name="Name"
						placeholder="Enter the Name" class="textBox" />
				</div>
				<div class="clr"></div>
			</div>
			<!--Second name-->

			<!---Phone No.------>
			<div class="box">
				<label for="phone" class="fl fontLabel"> Phone No.: </label>
				<div class="fl iconBox">
					<i class="fa fa-phone-square" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="text" required name="phoneNo" maxlength="10"
						placeholder="Enter the Phone No." class="textBox" />
				</div>
				<div class="clr"></div>
			</div>
			<!---Phone No.---->

			<!---Email ID---->
			<div class="box">
				<label for="email" class="fl fontLabel"> Email ID: </label>
				<div class="fl iconBox">
					<i class="fa fa-envelope" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="email" required name="email"
						placeholder="Enter the Email Id" class="textBox" />
				</div>
				<div class="clr"></div>
			</div>
			<!--Email ID----->

			<!---Password------>
			<div class="box">
				<label for="password" class="fl fontLabel"> Password </label>
				<div class="fl iconBox">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="Password" required name="password"
						placeholder="Enter the Password" class="textBox" />
				</div>
				<div class="clr"></div>
			</div>
			<!---Password---->

			<!---Gender----->
			<div class="box radio">
				<label for="gender" class="fl fontLabel"> Gender: </label> <input
					type="radio" name="Gender" value="Male" required /> Male &nbsp;
				&nbsp; &nbsp; &nbsp; <input type="radio" name="Gender"
					value="Female" required /> Female
			</div>
			<!---Gender--->

			<!--Terms and Conditions------>
			<div class="box terms">
				<input type="checkbox" name="Terms" required /> &nbsp; <a href="Terms&Condition.jsp" style="color: orange">I accept the
				terms and conditions</a> 
			</div>
			<!--Terms and Conditions------>

			<!---Submit Button------>
			<div class="box" style="background: #2d3e3f">
				<a href="orders.jsp"><input type="submit" name="Submit"
					class="submit" value="SUBMIT" /> </a>
			</div>
			<!---Submit Button----->
		</form>
	</div>
	

</body>
</html>
