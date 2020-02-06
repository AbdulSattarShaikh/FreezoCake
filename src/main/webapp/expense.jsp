<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

/* body {
    background-image: url("expense.jpg");
} */

</style>
</head>
<body>
	<div align="center">

		<h1 align="center">Expense Entry</h1>

		<form id="expense" action="expense" method="post" >

			<label>Expense Amount: </label> <input type="text"
				name="expense_amount"> <br /> <br> <label>Reason
				: </label> <input type="text" name="reason"> <br /> <br>
			<button>Submit</button>
		</form>

			<table>
				<tr>
				<td>Total Expense : ${totalExpense}</td>
				
				</tr>
			
			</table>



		<table border="1" cellpadding="10">
			<thead>
				<tr>
					<th>ID</th>
					<th>Expense Amount</th>
					<th>Reason</th>	
					<th>Action</th>					
				</tr>
			</thead>

			<c:forEach items="${expenseList}" var="expense">
				<tr>
					<td><c:out value="${expense.id}" /></td>
					<td><c:out value="${expense.expense_amount}" /></td>
					<td><c:out value="${expense.reason}" /></td>
					
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