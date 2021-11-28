<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int a78 = Integer.parseInt(request.getParameter("a78"));
	int a89 = Integer.parseInt(request.getParameter("a89"));
	int a910 = Integer.parseInt(request.getParameter("a910"));
	int a78N = Integer.parseInt((String)( request.getSession().getAttribute("a78N")));
	int a89N = Integer.parseInt((String)(request.getSession().getAttribute("a89N")));
	int total;
	int a910N = Integer.parseInt((String)(request.getSession().getAttribute("a910N")));
	if (a78 + a89 + a910 >=5){
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"2; url = UserBoard.jsp\" /><body><b>Exceeded No of Hours of Booking " + "</b></body></html>");
	}
	if((a78 > a78N)||(a89 > a89N)||(a910 > a910N) ){
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"2; url = UserBoard.jsp\" /><body><b>Unavailable " + "</b></body></html>");
	}
	else{
		 total = (a78 + a89 + a910)*50 + 100 ;
	}
	if((a78 <0)||(a89 <0)||(a910 <0) ){
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"2; url = UserBoard.jsp\" /><body><b>Unavailable " + "</b></body></html>");
	}
	else{
		 total = (a78 + a89 + a910)*50 + 100 ;
	}
	
	%>
</body>
</html>