<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<H3>ASCII Table</H3>
	<TABLE BORDER="1">
		<%
			StringBuffer sb = new StringBuffer();
			sb.append("<TR>");
			sb.append("<TH WIDTH=40>&nbsp;</TH>");
			for (int col = 0; col < 16; col++) {
				sb.append("<TH>");
				sb.append(Integer.toHexString(col));
				sb.append("</TH>");
			}
			sb.append("</TR>");
			for (int row = 0; row < 16; row++) {
				sb.append("<TR>");
				sb.append("<TH>");
				sb.append(Integer.toHexString(row));
				sb.append("</TH>");
				for (int col = 0; col < 16; col++) {
					char c = (char) (row * 16 + col);
					sb.append("<TD WIDTH=32 ALIGN=CENTER>");
					sb.append(c);
					sb.append("</TD>");
				}
				sb.append("</TR>");
			}
			out.println(sb);
		%>
	</TABLE>
</body>
</html>