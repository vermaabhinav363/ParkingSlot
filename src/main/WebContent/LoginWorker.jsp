<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<%
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	request.getSession().setAttribute("EMAIL_VIA_LOGIN_ADMINISTER", email);
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
		Statement st = conn.createStatement();
		
		ResultSet i = st.executeQuery(
		"SELECT * from workers WHERE Email = " + "'" + email + "'" + " and " + "Pass = " + "'" + pass + "'");

		if (i.next()) {
			out.println("<html><meta http-equiv=\"refresh\" \r\n"
			+ "        content=\"5; url = WorkerBoard.jsp\" /><body><b>Logged In" + "</b></body></html>");

		} else {
			out.println("<html><meta http-equiv=\"refresh\" \r\n"
			+ "        content=\"5; url = WorkerLogin.jsp\" /><body><b>Wrong Credential" + "</b></body></html>");
		}

	} catch (Exception e) {
		out.println("ERRORED");
	}
	%>
</body>
</html>