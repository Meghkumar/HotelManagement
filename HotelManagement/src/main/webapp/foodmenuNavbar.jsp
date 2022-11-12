<%@page import="com.cordialHost.entities.Login"%>
<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->


<%
Login auth = (Login) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">The Cordial Host Delicious Food
			Menu</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav"></button>
		<form class="d-flex justify-content-end" role="search"
			action="logout1" method="get">
			<input class="form-control me-2" type="search" placeholder="Search"
				aria-label="Search" />
			<button class="btn btn-outline-secondary" type="submit">Search</button>
		</form>
		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart
						<span class="badge bg-success px-1">${cart_list.size()}</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="LoginForm.jsp">Logout</a></li>


				<%-- 	<%
				if (auth != null) {
				%>
				<li class="nav-item"><a class="nav-link" href="#">Orders</a></li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
					<%
					} else {
					%>
				<li class="nav-item"><a class="nav-link" href="LoginForm.jsp">Login</a>
					<%
					}
					%><	/li> --%>
			</ul>
		</div>
	</div>
</nav>

<!-- Bootstrap 5 Start-->

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!-- Bootstrap 5 End-->