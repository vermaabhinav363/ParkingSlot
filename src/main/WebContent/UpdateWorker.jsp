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

String Repair   = request.getParameter("Repair");
String Wash     = request.getParameter("Wash");
String Fuel     = request.getParameter("Fuel");
String email =(String)request.getSession().getAttribute("EMAIL_VIA_LOGIN_WORKER");
out.println(email);


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
	Statement st = conn.createStatement();
	
	Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
				"UPDATE workers SET CarRepair =   " + Repair + " , CarWash =  " + Wash +" , FuelRefill =  " + Fuel +"   WHERE Email = '"+ email +"'");
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"1; url = WorkerBoard.jsp\" /><body><b>Done" + "</b></body></html>");

	
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>
</body>
</html>