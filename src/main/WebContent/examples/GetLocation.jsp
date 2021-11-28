<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*" %>
<!--

=========================================================
* Now UI Dashboard - v1.5.0
=========================================================

* Product Page: https://www.creative-tim.com/product/now-ui-dashboard
* Copyright 2019 Creative Tim (http://www.creative-tim.com)

* Designed by www.invisionapp.com Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Now UI Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="black">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					OOPS </a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Project </a>
			</div>
			<div class="sidebar-wrapper" id="sidebar-wrapper">
				<ul class="nav">
					<li><a href="./dashboard.html"> 
							Dashboard
					</a></li>
					<li><a href="./map.html"> 
							My Booking
					</a></li>
					<li><a href="./icons.html"> 
							Waiting List
					</a></li>
					<li><a href="./notifications.jsp"> 
							My Wallet
					</a></li>
					
					<li><a href="./user.html"> 
							Cancellation
					</a></li>
					<li class="active "><a href="./location.jsp"> 
							Search Location
					</a></li>
					<li><a href="./typography.html"> 
							Review us
					</a></li>
					<li class="active-pro"><a href="./upgrade.html"> 
							Upgrade to PRO
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">Locations</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
							<%
							Class.forName("com.mysql.jdbc.Driver");
                    		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
                    		Statement st=conn.createStatement();
                    		ResultSet  i =st.executeQuery("SELECT * from parkingslots ");
							
                    			out.println("<input list='browsers' name ='location'>");
								out.println("<datalist id='browsers'>");
								while(i.next()){
								String locate = i.getString("location");
								out.println("<option value='"+ locate +"'>");
								}
								%>
								
								</datalist>
								&nbsp&nbsp&nbsp <input type="date" value="" name="Date"
									placeholder="Date">&nbsp&nbsp&nbsp 
								CheckIn&nbsp&nbsp
								<input type="time" value="" name = "Checkin" >&nbsp&nbsp&nbsp
								CheckOut&nbsp&nbsp
								<input type="time" value="" name = "Checkout">&nbsp&nbsp&nbsp
								<input type="submit" value="Submit">

							</div>
						</form>

					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Locations</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
											<th>Location</th>
											<th>Date</th>
											<th>Worker Assigned</th>
											<th>Worker Rating</th>
											<th>Slots 7am-8am</th>
											<th>Slots 8am-9am</th>
											<th>Slots 9am-10am</th>
											<th>Slots 10am-11am</th>
											<th>Slots 11am-12am</th>
											<th>Slots 12am-1pm</th>
											<th>Slots 1pm-2pm</th>
											<th>Slots 2pm-3pm</th>
											<th>Slots 3pm-4pm</th>
											<th>Slots 4pm-5pm</th>
											<th class="text-right">Price</th>
										</thead>
										<tbody>
											<%
										
											String Locate = (String)request.getParameter("location");
											String Date = (String)request.getParameter("Date");
											
											Class.forName("com.mysql.jdbc.Driver");
				                    		Connection conn1 = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
				                    		Statement st1=conn.createStatement();
				                    		ResultSet  i1 =st.executeQuery("SELECT * from parkingslots where location = '" +Locate+ "'  and dateofEvent = '"+ Date +"'" );
				                    		out.println("<tr>");
				                    		String price="";
			                    			String Location="";
			                    			String date="";
			                    			String Worker="";
			                    			String Rating="";
			                    			String a78="";
			                    			String a89="";
			                    			String a910="";
			                    			String a1011="";
			                    			String a1112="";
			                    			String a1213="";
			                    			String a1314="";
			                    			String a1415="";
			                    			String a1516="";
			                    			String a1617=""; 
				                    		while(i1.next()){
				                    			price = i1.getString("price");
				                    			Location = i1.getString("location");
				                    			date =  i1.getString("dateofEvent");
				                    			Worker =  i1.getString("Worker");
				                    			Class.forName("com.mysql.jdbc.Driver");
					                    		Connection conn2 = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
					                    		Statement st2=conn2.createStatement();
					                    		ResultSet  i2=st2.executeQuery("SELECT * from workers where WorkerName= '" +Worker+ "'" );
					                    		if(i2.next())
				                    		    Rating =  i2.getString("WorkerRating");
					                    		else{
					                    		Rating =  "0";	
					                    		}
				                    			a78 =  i1.getString("a78");
				                    			a89 =  i1.getString("a89");
				                    			a910 =  i1.getString("a910");
				                    			a1011 =  i1.getString("a1011");
				                    			a1112 =  i1.getString("a1112");
				                    			a1213 =  i1.getString("a1213");
				                    			a1314 =  i1.getString("a1314");
				                    			a1415 =  i1.getString("a1415");
				                    			a1516 =  i1.getString("a1516");
				                    			a1617 =  i1.getString("a1617");
				                    		
											}
				                    		out.println("</tr>");
											
											
												out.println("<td>"+Location+"</td>");
												out.println("<td>"+date+"</td>");
												out.println("<td>"+Worker+"</td>");
												out.println("<td>"+Rating+"</td>");
												out.println("<td>"+a78+"</td>");
												out.println("<td>"+a89+"</td>");
												out.println("<td>"+a910+"</td>");
												out.println("<td>"+a1011+"</td>");
												out.println("<td>"+a1112+"</td>");
												out.println("<td>"+a1213+"</td>");
												out.println("<td>"+a1314+"</td>");
												out.println("<td>"+a1415+"</td>");
												out.println("<td>"+a1516+"</td>");
												out.println("<td class= 'text-right' >"+price+"</td>");
												
											%>	
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
			
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="../assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0"
		type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="../assets/demo/demo.js"></script>
</body>

</html>