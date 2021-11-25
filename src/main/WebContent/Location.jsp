<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*" %>
<!DOCTYPE html>
<html>

<head>
  <title>Auto PARK</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="prjcard.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" href="style.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
    integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
    integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>

<body>
  <div class="first">
    <div class="container">
      <h1>Auto PARK</h1>
      <h5>The next gen CAR PARKING</h5>
      <ul class="social">
        <li> <a href="Logout.jsp"> L O G O U T </i></a>
        </li>

      </ul>
      <nav class="navbar navbar-expand-sm">
        
      </nav>
    </div>
    <div class="container">
      <div class="container">
		



	</div>


	<div class="message">
			
			<%
                    	try{
                    		String location=request.getParameter("Locate");
                    		String Date=request.getParameter("Date");
                    		
                    		Class.forName("com.mysql.jdbc.Driver");
                    		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
                    		Statement st=conn.createStatement();
                    		ResultSet  i =st.executeQuery("SELECT * from parkingslots WHERE location = " + "'" +  location + "'" + " and dateofEvent = " + "'" + Date + "'" );
                    		out.println("<table><tr><th>Location</th></tr></table>");
                    		while(i.next()){
                    			 String locate = i.getString("location");
                                 String date = i.getString("dateofEvent");
                            out.println("<div class = 'scrollmenu'>");  	
                    		out.println("<div class='cards'><div class='info'><div class='image'><img src='https://media.istockphoto.com/photos/reserved-parking-space-picture-id1274246832?b=1&k=20&m=1274246832&s=170667a&w=0&h=onZcrY04vwXYapRZxcyyB5G_IKlxb63ppKFkKmEzDcw='></div><div class='detail'><p>Location: City Mall</p><p>Date: 1/11/2021</p><p>a</p><p>s</p><p>d</p><p>f</p><p>c</p><p>x</p><p>w</p></div></div><div class='work'><div class='photo'><img src='https://images.unsplash.com/photo-1614436163996-25cee5f54290?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'></div><div class='detail'><p>Name: </p><p>Age: </p><p>Rating:</p></div></div></div><br><br><br><br><br><br><br>");	
                    	    out.println("</div>");
                    		}
                    	}
                    	catch(Exception e)
                    	{
                    		out.println(e.toString());
                    	}
              %>
			
			
		
	</div>

    </div>
  </div>



  
  <footer>
    <p class="text-center"><br>
    </p>
  </footer>
</body>

</html>