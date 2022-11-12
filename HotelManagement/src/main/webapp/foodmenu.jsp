<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to our Food Menu</title>
<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">The Cordial Host Delicious Food
				Menu</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"></button>
			<form class="d-flex justify-content-end" role="search">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search" />
				<button class="btn btn-outline-secondary" type="submit">Search</button>
			</form>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Cart</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Orders</a></li>

					<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	</div>

	<!-- Bootstrap 5 Start-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<!-- Bootstrap 5 End-->
</body>
</html>