<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

/* body {
    background-image: url("cake.jpg");
} */
</style>
</head>
<body>


	<h3 align="right">Contact no : 9323362799</h3>

	<h1 align="center" style="color: blue;">Welcome to Freezo cakes</h1>
	<br>

	<div align="center">
		<a href="${pageContext.request.contextPath}aboutUs.jsp">
			<button>About Us</button>
		</a> <a href="${pageContext.request.contextPath}income.jsp">
			<button>Income Entry</button>
		</a> <a href="${pageContext.request.contextPath}expense.jsp"><button>Daily
				Expense Entry</button></a> <a
			href="${pageContext.request.contextPath}material.jsp"><button>Material
				Entry</button></a>
		<div align="left">

			<table>
				<thead>
					<tr>
						<th>Total Cash : ${cashSum}</th>
					</tr>
					<tr>
						<th>Total Online :${onlineSum}</th>
					</tr>
					<tr>
						<th>Total Income :${totalIncome}</th>
					</tr>
					<tr>
						<th>Total Expense :${totalExpense}</th>
					</tr>

				</thead>

			</table>

		</div>


	</div>
</body>
</html>