<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String a7_8   = request.getParameter("7-8");
String a8_9   = request.getParameter("8-9");
String a9_10  = request.getParameter("9-10");
String a10_11 = request.getParameter("10-11");
String a11_12 = request.getParameter("11-12");
String a12_13 = request.getParameter("12-13");
String a13_14 = request.getParameter("13-14");
String a14_15 = request.getParameter("14-15");
String a15_16 = request.getParameter("15-16");
String a16_17 = request.getParameter("16-17");
String loc = request.getParameter("Locate");
String date = request.getParameter("Date");
String price = request.getParameter("Price");
String Image = request.getParameter("Image");
String Name = request.getParameter("WorkerName");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
	Statement st = conn.createStatement();
	
	Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
				"Insert into parkingslots( a78,a89,a910,a1011,a1112,a1213,a1314,a1415,a1516,a1617,location,dateofEvent,price,image,Worker ) values(" + "'"
						+ a7_8 + "'," + "'" + a8_9 + "'," + "'" + a9_10 + "'," + "'" + a10_11 + "'," + "'" + a11_12
						+ "'," + "'" + a12_13 + "'," + "'" + a13_14 + "'," + "'" + a14_15 + "'," +  "'" + a15_16 + "'," + "'" + a16_17 + "'," + "'"
								+ loc + "'," + "'" + date + "'," + "'" + price + "'," + "'" + Image + "'," + "'" + Name
								+ "'" + ")");
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = AdminBoard.jsp\" /><body><b>Done" + "</b></body></html>");

	
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>