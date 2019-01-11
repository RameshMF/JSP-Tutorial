<%@page import="net.javaguides.jsp.tutorial.Calculator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% Calculator calculator = new Calculator(); %>

	Addition of 20 + 10 =
	<%= calculator.addition(20, 10) %>

</body>
</html>