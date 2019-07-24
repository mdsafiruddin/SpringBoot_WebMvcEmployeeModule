<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
<h3>WELCOME TO EMPLOYEE DATA</h3>
<table style="color:red" border="1">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>SALARY</th>
		<th>DEPT</th>
		<th>ADDRESS</th>
		<th>OPERATIONS</th>
	</tr>
	
	<c:forEach items="${list}" var="ob">
		<tr>
			<td><c:out value="${ob.id}"/> </td>
			<td><c:out value="${ob.name}"/> </td>
			<td><c:out value="${ob.sal}"/> </td>
			<td><c:out value="${ob.dept}"/> </td>
			<td><c:out value="${ob.addr}"/> </td>
			<td>
				<a href="delete?id=${ob.id}">DELETE</a>
				<a href="edit?id=${ob.id}">EDIT</a>
			</td>
		</tr>
	</c:forEach>
</table>
<a href="all">View All</a>
<a href="show">HOME</a>
    ${msg}        
</body>
</html>




