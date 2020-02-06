<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div align="center">
	
<br><br>
<div align="right">
	<a href="${pageContext.request.contextPath}home.jsp" > <button >Home</button></a> 
	
	</div>
	<h1 align="center">Income Entry</h1>


	<form id="income" action="income" method="post">
		<label>IncomeType: </label> <select name="incomeType">
			<option value="CASH">CASH</option>
			<option value="ONLINE">ONLINE</option>
		</select> <br> <br /> <label>Product: </label> <input type="text"
			name="product"> <br /> <br> <label>Amount : </label> <input
			type="text" name="amount"> <br /> <br>
		<button>Submit</button>
	</form>
	<br>
	<br>

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
			
		</thead>
	
	</table>

	 <table border="1" cellpadding="10">
	 	<thead>
            <tr>
                <th>ID</th>
                <th>Amount Type</th>
                <th>Amount</th>
                <th>Product Sold</th>
                <th>Actions</th>
                                 
            </tr>
        </thead>
	 
		<c:forEach items="${incomeList}" var="income">
			<tr>
				<td><c:out value="${income.id}" /></td>
				<td><c:out value="${income.incomeType}" /></td>
				<td><c:out value="${income.amount}" /></td>
				<td><c:out value="${income.product}" /></td>				
				<td>
                    <a c:href="@{'/edit/' + ${income.id}}"><button>Edit</button></a>
                    &nbsp;&nbsp;&nbsp;
                    <a c:href="@{'/delete/' + ${income.id}}"><button>Delete</button></a>
                </td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
		
</div>  	
</body>
</html>