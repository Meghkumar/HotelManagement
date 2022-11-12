<%@page import="com.cordialHost.helper.ConnectionProvider"%>
<%@page import="com.cordialHost.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="com.cordialHost.entities.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;

if (cart_list != null) {
	ProductDao pDao = new ProductDao(ConnectionProvider.getConnection());
	cartProduct = pDao.getCartProducts(cart_list);
	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("cart_list", cart_list);
	request.setAttribute("total", total);
}
%>
<!-- Bootstrap 5 Start-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Bootstrap 5 End-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
.table tbody td {
	vertical-align: middle;
}

.btn-incre, .btn-decre {
	box-shadow: none;
	font-size: 25px
}
</style>



</head>
<body>
	<jsp:include page="foodmenuNavbar.jsp"></jsp:include>


	<div class="container">
		<div class="d-flex py-3">
			<h3>
				Total Price: <i class="fa fa-inr" style="font-size: 1.5rem"></i>
				${(total>0)?total:0}
			</h3>
			<a class="mx-3 btn btn-primary" href="#">Check Out</a>
		</div>

		<table class="table table-light">

			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel Order</th>
				</tr>
			</thead>

			<tbody>

				<%
				if (cart_list != null) {
					for (Cart c : cartProduct) {
				%>
				<tr>
					<td><%=c.getName()%></td>
					<td><%=c.getCategory()%></td>
					<td><i class="fa fa-inr" style="font-size: 0.9rem"></i> <%=c.getPrice()%></td>
					<td>
						<form action="order-now" method="post" class="form-inline">
							<input type="hidden" name="id" value="<%=c.getId()%>"
								class="form-input"> 
							<div class="form-group d-flex justify-content-start w-50 ">
								<a class="btn btn-sm btn-decre"
									href="quantity-incre-decre?action=decre&id=<%=c.getId()%>"><i
									class="fa-solid fa-circle-minus"></i> </a><input type="text"
									name="quantity" value="<%=c.getQuantity() %>" class="form-input w-50"
									readonly="readonly" > <a class="btn btn-sm btn-incre"
									href="quantity-incre-decre?action=incre&id=<%=c.getId()%>"><i
									class="fa-solid fa-circle-plus"></i> </a>
							<button type="submit" class="btn btn-secondary btn-sm">Buy</button>
							</div>
							
							
						</form>
					</td>

					<td><a class="btn btn-sm  btn-danger" href="remove-from-cart?id=<%=c.getId() %>">Remove</a></td>
				</tr>
				<%
				}
				}
				%>



			</tbody>

		</table>

	</div>



	<!-- Bootstrap 5 Start-->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Bootstrap 5 End-->
</body>
</html>