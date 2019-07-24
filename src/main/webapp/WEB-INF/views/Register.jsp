<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Register</title>
</head>
<body>
<h3 style="color:red"> Welcome to Employee register page</h3>
<form:form action="save" method="POST" modelAttribute="employee">
<pre>
<c:if test="${'EDIT' eq Mode}">
 ID:<form:input path="id" readOnly="ture"/>
</c:if>
Name:: <form:input path="name"/>

Salary:<form:input path="sal"/>

Dept:: <form:select path="dept">
    <form:option value="">Select</form:option>
    <form:option value="dev">DEV</form:option>
    <form:option value="qa">QA</form:option>
    <form:option value="ba">BA</form:option>
</form:select>

Address::<form:textarea path="addr"/>
<c:choose>
 <c:when test="${'EDIT' eq Mode}">
 <input type="submit" value="Update"/> 
 </c:when>
 <c:otherwise>
 <input type="submit" value="Register"/>
 </c:otherwise>
 </c:choose>  


</pre>
</form:form>
 <a href="all">View All</a>
${message}
</body>
</html>