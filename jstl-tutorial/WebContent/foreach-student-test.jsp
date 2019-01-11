<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*,net.javaguides.jstl.Student"%>

<%
	// just create some sample data ... normally provided by MVC
	List<Student> data = new ArrayList<>();

	data.add(new Student("Ramesh", "Fadatare", false));
	data.add(new Student("John", "Cena", false));
	data.add(new Student("Tom", "Cruise", false));
	data.add(new Student("Tony", "Stark", false));
	data.add(new Student("Prakash", "Jadhav", true));
	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>

	<h1>List of students</h1>
	<table border="1" width="100%">

		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>

		<c:forEach var="tempStudent" items="${myStudents}">

			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>${tempStudent.goldCustomer}</td>
			</tr>

		</c:forEach>

	</table>

</body>

</html>












