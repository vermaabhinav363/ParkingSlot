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
	String phone = request.getParameter("Phone");
	String pass = request.getParameter("password");
	request.getSession().setAttribute("PHONE_VIA_LOGIN", phone);
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
		Statement st = conn.createStatement();
		ResultSet i = st.executeQuery(
		"SELECT * from users WHERE Phone = " + "'" + phone + "'" + " and " + "Pass = " + "'" + pass + "'");

		if (i.next()) {
			out.println("<html><meta http-equiv=\"refresh\" \r\n"
			+ "        content=\"5; url = UserBoard.jsp\" /><body><b>Logged In" + "</b></body></html>");

		} else {
			out.println("<html><meta http-equiv=\"refresh\" \r\n"
			+ "        content=\"5; url = default1.html\" /><body><b>Wrong Credential" + "</b></body></html>");
		}

	} catch (Exception e) {
		request.getSession().invalidate();
		request.getSession().setAttribute("OTP","invalidating");
		request.getSession().setAttribute("EMAIL_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("FNAME_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("LNAME_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("UNAME_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("NUMBER_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("REGISTER_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("ADDRESS_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("PASSWORD_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("PHONE_VIA_LOGIN","invalidating");
		out.println("ERRORED");
	}
	%>
</body>
</html>