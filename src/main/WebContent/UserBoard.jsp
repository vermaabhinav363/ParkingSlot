<%@page import="java.sql.*,java.util.*"%>
<%@page
	import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*"%>
<%@page import="java.net.HttpURLConnection.*"%>
<!DOCTYPE html>
<html>

<head>
<title>Auto PARK</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css" type="text/css">
<link href="map.css" type="text/css" rel="stylesheet">
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
</head>

<body>
	<div class="first">
		<div class="container">
			<h1>Auto PARK</h1>
			<h5>The next gen CAR PARKING</h5>

			<ul class="social">
				<li><a href="Logout.jsp"> L O G O U T </a></li>
			</ul>

			<ul class="socialL"> 
				<li><a href="Wallet.jsp"> MY  WALLET</a></li>
			</ul>

			<nav class="navbar navbar-expand-sm"></nav>

		</div>
		<div class="container">
			<div class="container"></div>


			<div class="message">

				<h2 class="text-center">We got you covered ;)</h2>
				<h6 class="text-center">Browse through hundreds of parking
					slots owned by AutoPARK.</h6>



				<div class="row">
					<div class="pic">
						<div class="row container parkimg">

							<%
							Class.forName("com.mysql.jdbc.Driver");
							Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
							Statement st = conn.createStatement();
							ResultSet i = st.executeQuery("SELECT DISTINCT * from parkingslots");

							while (i.next()) {
								String locate = i.getString("location");
								out.println(
								"<div class='col-12 col-md-3 col-lg-3 col-xl-3 b'><form action = 'Location.jsp'><button type='submit' > "
										+ locate + "</button></form></div>");

							}
							%>






						</div>



					</div>

				</div>

			</div>
		</div>



		<div class="letter text-center">
			<br>
			<br>
			<p class="text-center">Review and help us improve</p>
			<div class="container">


				<form action="/Review.jsp" method="post">

					<div class="form-group">
						Email <input class="form-control" type="email" name="email"
							required> Comment<input class="form-control" type="text"
							name="comment" required>

					</div>
					<br> <input type="submit" value="Submit">
				</form>


			</div>
		</div>
		<footer>
			<p class="text-center">
				<br>
			</p>
		</footer>
	</div>
</body>

</html>