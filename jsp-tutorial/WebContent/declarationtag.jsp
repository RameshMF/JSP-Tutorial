<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Using variables in declaration tag</h1>
	<%!String firstName = "Ramesh";%>
	<%!String lastName = "Fadatare";%>
	<%!int age = 28;%>
	<%!LocalDate dob = LocalDate.of(1991, 03, 24);%>

	<br> First Name:
	<%=firstName%>
	<br> Last Name:
	<%=lastName%>

	<br> Age:
	<%=age%>

	<br> Date of Birth:
	<%=dob%>

	<h1>Using methods in declaration tag</h1>
	<%! 
		String getFirstName(){
			return "Ramesh";
		}
	%>

	<%! 
		String getLastName(){
			return "Fadatare";
		}
	%>


	<br> First Name:
	<%= getFirstName() %>

	<br> Last Name:
	<%= getLastName() %>
</body>
</html>