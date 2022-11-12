
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cordialHost.entities.*"%>
<%@page import="com.cordialHost.servlet.*"%>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
<title>Customer Login</title>
<link rel="stylesheet" href="CssFiles/LoginForm.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->

</head>
<body>
	<div class="bg-img">
		<div class="content">
			<img src="/Images/The Cordial Host.png" alt="" />
			<header style="color: rgb(249, 201, 11)">Welcome</header>

			<%
			Message m = (Message) session.getAttribute("msg");
			if (m != null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=m.getContent()%>
			</div>

			<%
			session.removeAttribute("msg");

			}
			%>


			<form action="login1">
				<div class="field">
					<span class="fa fa-user"></span> <input type="text" required
						placeholder="UserName" name="loginname" />
				</div>
				<br>
				<div class="field">
					<span class="fa fa-envelope"></span> <input type="text" required
						placeholder="Email" name="loginemail" />
				</div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input type="password"
						class="pass-key" required placeholder="Password"
						name="loginpassword" /> <span class="show">SHOW</span>
				</div>
				<div class="pass">
					<a href="#">Forgot Password?</a>
				</div>
				<div class="field">
					<input type="submit" value="LOGIN" />
				</div>
			</form>
			<!-- <div class="login">Or login with</div>
        <div class="links">
          <div class="facebook">
            <i class="fab fa-facebook-f"><span>Facebook</span></i>
          </div>
          <div class="instagram">
            <i class="fab fa-instagram"><span>Instagram</span></i>
          </div>
        </div> -->
			<div class="signup">
				Don't have account? <a href="register.jsp">Signup Now</a>
			</div>
		</div>
	</div>


	<!-- Bootstrap 5 Start-->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Bootstrap 5 End-->
</body>
</html>