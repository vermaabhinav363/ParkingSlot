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
		ADMIN BOARD<br>
	</p>


	<div class="message">
		<div class="container">
			<h2 class="text-center">ADD PLACES</h2>
			<br> <br> <br>


			<div class="row">
				<div class="col-12 text-center">
					<form action="./InsertPlaces.jsp" method="post">
						<div class="title"></div>
						<div class="info">
							Location <input class="fname" type="text" name="Locate" >&nbsp

							Date <input class="fname" type="date" name="Date" >&nbsp<br><br>


							Price <input class="fname" input
								type="number" step="any" name="Price" >&nbsp<br><br>
							
							Image <input class="fname" type="text" name="Image" placeholder="Enter URl" >&nbsp<br><br>
                            Worker Name Assigned <input class="fname" type="text" name="WorkerName" >&nbsp 
                            
                          
 							ImageWorker <input class="fname" type="text" placeholder="Enter URl" name="TmageWorker" > <br>
							<br>
							NO OF SLOTS FOR TIME DURATION - 
							<br>
							07-08 &nbsp<input class="fname" type="number" name="7-8" required> <br>
							08-09 &nbsp<input class="fname" type="number" name="8-9" required> <br>
							09-10 &nbsp<input class="fname" type="number" name="9-10" required> <br>
							10-11 &nbsp<input class="fname" type="number" name="10-11" required> <br>
							11-12 &nbsp<input class="fname" type="number" name="11-12" required> <br>
							12-13 &nbsp<input class="fname" type="number" name="12-13" required> <br>
							13-14 &nbsp<input class="fname" type="number" name="13-14" required> <br>
							14-15 &nbsp<input class="fname" type="number" name="14-15" required> <br>
							15-16 &nbsp<input class="fname" type="number" name="15-16" required> <br>
							16-17 &nbsp<input class="fname" type="number" name="16-17" required> <br>
							<br>
						</div>
						<br>
						<button type="submit">Submit</button>
					</form>

					<div class="message">
						<div class="container">
							<h2 class="text-center">REMOVE PLACES</h2>
							<br> <br> <br>
							<form action="./DeletePlaces.jsp" method="post">
								<div class="title"></div>
								<div class="info">
									Location <input class="fname" type="text" name="Locate"
										required>&nbsp&nbsp Date <input class="fname"
										type="date" name="Date" required> <br>
								</div>
								<br>
								<button type="submit">Submit</button>
							</form>
							<br> <br> <br> <br>
							
							<h2 class="text-center">ADD WORKERS</h2>
							<br> <br> <br>
							<form action="./AddWorkers.jsp" method="post">
								<div class="title"></div>
								<div class="info">
									Worker Name <input class="fname" type="text" name="WorkerName"
										required> ImageWorker <input class="fname"
										type="text" name="Image" required> 
										Worker Email <input class="fname" type="text" name="WorkerEmail"
										required><br><br>
										Password<input class="fname" type="text" name="Pass"
										required>
								</div>
								<br>
								<button type="submit">Submit</button>
							</form>
							<br> <br> <br> <br>
							<h2 class="text-center">REMOVE WORKERS</h2>
							<br> <br> <br>
							<form action="./RemoveWorker.jsp" method="post">
								<div class="title"></div>
								<div class="info">
										Worker Email <input class="fname" type="text" name="WorkerEmailRemove"
										required>
								</div>
								<br>
								<button type="submit">Submit</button>
							</form>
							<br> <br> <br> <br>
							<div class="row">
								<div class="col-12 text-center">
									<form action="./Location.jsp" method="post">
										<div class="title"></div>
								</div>
							</div>
						</div>
					</div>
					
						<h2 class="text-center">Worker List</h2>
							<br> <br> <br>
					<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
						Statement st = conn.createStatement();
						ResultSet i = st.executeQuery("SELECT * from workers ");
						out.println("<table style='width:100%'><tr><th>WorkerName</th><th>WorkerRating</th><th>Email</th><th>Password</th></tr>");
						while(i.next()) {
							String str1 = i.getString("WorkerName");
							String str2 = i.getString("WorkerRating");
							String str3 = i.getString("Email");
							String str4 = i.getString("Pass");
							
							out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
						<br> <br> <br>
						<h2 class="text-center">Location List</h2>
						<br> <br> <br>
					<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
						Statement st = conn.createStatement();
						ResultSet i = st.executeQuery("SELECT * from parkingslots ");
						out.println("<table style='width:100%'><tr><th>Location</th><th>Date</th><th>Price</th><th>WorkerAssigned</th></tr>");
						while(i.next()) {
							String str1 = i.getString("location");
							String str2 = i.getString("dateofEvent");
							String str3 = i.getString("price");
							String str4 = i.getString("Worker");
					  		out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
  					 
  					 <br> <br> <br> <br> <br> <br>
					





					
</body>
</html>