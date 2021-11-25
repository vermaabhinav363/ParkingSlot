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
	String pass = request.getParameter("comment");
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
		Statement st = conn.createStatement();
		
		 
		Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
			"Insert into reviews(Email,Comment) values(" + "'"
					+ email + "'," + "'" + pass + "'" + ")");
			out.println("<html><meta http-equiv=\"refresh\" \r\n"
			+ "        content=\"5; url = UserBoard.jsp\" /><body><b>Successfully Inserted" + "</b></body></html>");

		
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
	%>
</body>
</html>