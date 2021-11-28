<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String Value     = request.getParameter("valueA");
String phone    = (String)request.getSession().getAttribute("PHONE_VIA_LOGIN");
String current = "0";
float t1=0;
float t2=0;

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn1 = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
	Statement st2 = conn1.createStatement();
	ResultSet i2 = st2.executeQuery("SELECT * from users where Phone = '"+ phone +"'");
	
	if(i2.next()) {
		current = i2.getString("Wallet");
		t1 = Float.parseFloat(current);  
		
		
	}
	t2 = Float.parseFloat(Value);
	t1=t1+t2;
	
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
	Statement st = conn.createStatement();
	
	Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
				"Update users SET Wallet = " + "'" + t1 + "'"  + "WHERE Phone = " + "'" + phone + "'" );
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"1; url = http://localhost:8080/BasicWebApplication/examples/notifications.jsp	\" /><body><b>Done" + "</b></body></html>");

	
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>