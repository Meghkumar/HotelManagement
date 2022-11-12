<%@page import="com.cordialHost.entities.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cordialHost.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.cordialHost.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cordialHost.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cordialHost.entities.Login"%>
<%
Login auth = (Login) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
%>

<%
ProductDao pd = new ProductDao(ConnectionProvider.getConnection());
List<Product> products = pd.getAllProducts();
%>

<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Page</title>
<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->


</head>
<body>
	<jsp:include page="foodmenuNavbar.jsp"></jsp:include>


	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">



			<%
			if (!products.isEmpty()) {

				for (Product p : products) {
			%>
			<!-- I have not inserted image here please insert after completion -->
			<div class="col-md-3 my-3">
				<div class="card w-100" style="width: 18rem">
					<img src="/HotelManagement/Images/dinning/dinning.jpg"
						class="card-img-top" alt="..." />
					<div class="card-body">
						<h5 class="card-title"><%=p.getName()%></h5>
						<h6 class="price">
							Price: Rs.<%=p.getPrice()%></h6>
						<h6 class="category">
							Category:
							<%=p.getCategory()%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="add-to-cart?id=<%=p.getId()%>" class="btn btn-dark">Add</a>
							<a href="#" class="btn btn-primary">Buy</a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			}
			%>


		</div>
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