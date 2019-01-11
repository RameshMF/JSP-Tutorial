<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page session="false"%>
<%@ page import="java.io.*,java.text.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>>Fuel Efficiency Conversion Chart</title>
<%!private static final DecimalFormat FMT = new DecimalFormat("#0.00");%>
</head>
<body>
	<%-- Prints a conversion table of miles per gallon to kilometers per liter --%>
<BODY>
	<H3>Fuel Efficiency Conversion Chart</H3>
	<TABLE BORDER=1>
		<TR>
			<TH>Kilometers per Liter</TH>
			<TH>Miles per Gallon</TH>
		</TR>
		<%
			for (double kpl = 5; kpl <= 20; kpl += 1.0) {
				double mpg = kpl * 2.352146;
		%>
		<TR>
			<TD><%=FMT.format(kpl)%></TD>
			<TD><%=FMT.format(mpg)%></TD>
		</TR>
		<%
			}
		%>
	</TABLE>

    <db:connect url="mydatabase">
		<db:runQuery>
            SELECT *
            FROM FD_GROUP
            WHERE FdGp_Desc LIKE '%F%'
            ORDER BY FdGp_Cd
</db:runQuery>
		<table border="1">
			<tr>
				<th>Food Group Code</th>
				<th>Description</th>
			</tr>
			<db:forEachRow>
				<tr>
					<td><db:getField name="FdGp_Cd" /></td>
					<td><db:getField name="FdGp_Desc" /></td>
				</tr>
			</db:forEachRow>
		</table>
	</db:connect>
</body>
</html>