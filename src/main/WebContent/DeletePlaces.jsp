<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String Location   = request.getParameter("Locate");
String Date   = request.getParameter("Date");



try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
	Statement st = conn.createStatement();
	
	Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
				"Delete from parkingslots where location = " + "'" +  Location + "' and dateofEvent = " + "'" + Date + "'" );
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = AdminBoard.jsp\" /><body><b>Done" + "</b></body></html>");

	
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>