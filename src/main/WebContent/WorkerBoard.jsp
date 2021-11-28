<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<title>Auto PARK</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-flat.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Auto PARK</title>
</head>
<body>

	<p class="text-center">
		WORKER BOARD<br>
	</p>


	
		


		
				

				
					
						<h2 class="text-center">Current Profile</h2>
							<br> <br> <br>
					<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
						Statement st = conn.createStatement();
						String email =(String)request.getSession().getAttribute("EMAIL_VIA_LOGIN_WORKER");
						ResultSet i = st.executeQuery(
								"SELECT * from workers WHERE Email = " + "'" + email + "'" );
						out.println("<table style='width:100%'><tr><th>WorkerName</th><th>WorkerRating</th><th>Email</th><th>Password</th><th>CarRepair</th><th>CarWash</th><th>Fuel</th></tr>");
						while(i.next()) {
							String str1 = i.getString("WorkerName");
							String str2 = i.getString("WorkerRating");
							String str3 = i.getString("Email");
							String str4 = i.getString("Pass");
							String str5 = i.getString("CarRepair");
							String str6 = i.getString("CarWash");
							String str7 = i.getString("FuelRefill");
							
							
							
							out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th><th>"+str5+ "</th><th>"+str6+ "</th><th>"+str7+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
					<br> <br> <br>
					<h2 class="text-center">Update Profile</h2>
							<br> <br> <br>
					
					<form action="./UpdateWorker.jsp" method="post">
								<div class="title"></div>
								<div class="info">
								
										Car Repair<input class="fname" type="text" name="Repair" placeholder ="0/1"
										required>
										Car Wash<input class="fname" type="text" name="Wash"placeholder ="0/1"
										required>
										Fuel<input class="fname" type="text" name="Fuel"placeholder ="0/1"
										required>
										<button type="submit">Submit</button>
								</div>
								
								
							</form>




					
</body>
</html>