<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

/* body {
    background-image: url("material.jpg");
}
 */

</style>
</head>
<body>
	<div align="center">
	
	
			<h1 align="center">Material Entry</h1>
			
	
		<form id="material" action="material" method="post">

			<label>Enter Product: </label> <input type="text" name="product">
			<br /> <br> <label>Product Quantity : </label> <input
				type="text" name="quantity"> <br /> <br> <label>Product
				Price: </label> <input type="text" name="price"> <br /> <br>

			<button>Submit</button>
		</form>
<br><br> <br>
		<table border="1" cellpadding="10">
			<thead>
				<tr>
					<th>ID</th>
					<th>Product</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Amount</th>
					<th>Actions</th>
				</tr>
			</thead>

			<c:forEach items="${materialList}" var="material">
				<tr>
					<td><c:out value="${material.id}" /></td>
					<td><c:out value="${material.product}" /></td>
					<td><c:out value="${material.quantity}" /></td>
					<td><c:out value="${material.price}" /></td>
					<td><c:out value="${material.amount}" /></td>

					<td><a c:href="@{'/edit/' + ${income.id}}"><button>Edit</button></a>
						&nbsp;&nbsp;&nbsp; <a c:href="@{'/delete/' + ${income.id}}"><button>Delete</button></a>
					</td>
				</tr>
			</c:forEach>
		</table>
<a href="${pageContext.request.contextPath}home.jsp" > <button>Go To Home Page</button></a> <br><br>
	</div>



</body>
</html>