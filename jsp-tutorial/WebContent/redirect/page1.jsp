<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> Inside Page 1 </h1>
	
	<%

        String redirectURL = "http://localhost:8080/jsp-tutorial/redirect/page2.jsp";

        response.sendRedirect(redirectURL);

    %>
	
</body>
</html>