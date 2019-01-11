<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,net.javaguides.jstl.Student" %>

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
			<td>
				<c:choose>
				
					<c:when test="${tempStudent.goldCustomer}">
						Special Discount
					</c:when>
					
					<c:otherwise>
						no soup for you!
					</c:otherwise>

				</c:choose>
				
			</td> 
		</tr>
		
	</c:forEach>

	</table>

</body>

</html>












