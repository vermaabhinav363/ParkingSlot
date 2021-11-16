<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String email=request.getParameter("email");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uname=request.getParameter("uname");
String number=request.getParameter("number");
String register=request.getParameter("register");
String address=request.getParameter("address");
String password=request.getParameter("password");

request.getSession().setAttribute( "EMAIL_VIA_REGISTER" , email);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
Statement st=conn.createStatement();
ResultSet  i =st.executeQuery("SELECT * from users WHERE Email= " + "'" +  email + "'"  );
if(i.next()){
out.println("<html><meta http-equiv=\"refresh\" \r\n"
		+ "        content=\"50; url = default1.html\" /><body><b>Please Login "
			+ "</b></body></html>"); 
}
else{
	Statement st1=conn.createStatement();
	int	  i1 =st.executeUpdate( "Insert into users(FirstName,LastName,UserName,Email,Phone,Registration,Address, Pass ) values(" + "'" + fname + "'," + "'" +lname+ "'," + "'" +uname +"',"  + "'" +email +"'," +"'" + number +"'," +"'" + register + "'," + "'" +address +"',"+"'" + password +"'"  +  ")");
	out.println("<html><meta http-equiv=\"refresh\" \r\n"
			+ "        content=\"5; url = default1.html\" /><body><b>Successfully Inserted"
				+ "</b></body></html>"); 
	
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>