<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
<title>Admin Login</title>
<link rel="stylesheet" href="CssFiles/LoginForm.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>
	<div class="bg-img">
		<div class="content">
			<img src="/Images/The Cordial Host.png" alt="" />
			<header style="color: rgb(249, 201, 11)">Admin Login</header>
			<form action="#">
				<div class="field">
					<span class="fa fa-user"></span> <input type="text" required
						placeholder="Email or Phone" />
				</div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input type="password"
						class="pass-key" required placeholder="Password" /> <span
						class="show">SHOW</span>
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
			
		</div>
	</div>
</body>
</html>