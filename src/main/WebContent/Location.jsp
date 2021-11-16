<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
 <title>Auto PARK</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
     integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
     <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Auto PARK</title>
</head>
 <body>
  
        <div class="container"><h1>Welcome</h1>
       
         
         <%
         try {
        	 
        	 
        	String email = (String)request.getSession().getAttribute("EMAIL_VIA_LOGIN");
        	 
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/sonoo", "root", "9414");
        	 Statement st=conn.createStatement();
        	 ResultSet  i =st.executeQuery("SELECT * from users WHERE Email= " + "'" +  email + "'"  );
        	
        	 if(i.next()){
        		 String str = i.getString("FirstName");
         	 	out.println(str);
        	 }
        	 	
        	 	
        	 
         }
         
         catch(Exception e){
        	 System.out.println(e.toString());
         }
         %>       
        
         </div>
        
     
      <div class="message">
          <div class="container">
              
              
              <div class="row">
                    <div class="col-12 text-center">
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
                    			
                    	    out.println("<html><div class='card'>" + "<img src='img.jpg' alt='Avatar' style='width:100%'><div class='container'><h4><b>John Doe</b></h4><p>Architect & Engineer</p></div></div></html>");
                    	    
                    		out.println("<html><table><tr><td> " + i.getString(1) + "&nbsp&nbsp&nbsp" + i.getString(2) + " </td> </tr></table></html>"); 
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
      </div>
      
      <div class="what_to_do container">
           <h2 class="text-center">What we do</h2>
           <div class="row container">
                <div class="col-12 col-md-4 col-lg-4 col-xl-4 text-center">
                    <i class="text-center fab fa-pagelines"></i>
                    <h3>Lorem Ipsum</h3>
                    <p> Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p>
                    <div class="row">
                          <div class="col-12 text-center">
                            <button type="button"><a href="#">Read more</a></button>
                          </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-4 col-xl-4 text-center">
                   <i class="text-center fas fa-coffee"></i>
                   <h3>Lorem Ipsum</h3>
                   <p> Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p>
                   <div class="row">
                         <div class="col-12 text-center">
                           <button type="button"><a href="#">Read more</a></button>
                         </div>
                   </div>
                </div>
                <div class="col-12 col-md-4 col-lg-4 col-xl-4 text-center">
                    <i class="text-center fas fa-table"></i>
                    <h3>Lorem Ipsum</h3>
                    <p> Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p>
                    <div class="row">
                          <div class="col-12 text-center">
                            <button type="button"><a href="#">Read more</a></button>
                          </div>
                    </div>
                </div>
            </div>
      </div>
      <div class="four">
          <div class="container">
               <h1 class="text-center">There are many variations of passages of Lorem Ipsum available?</h1>
               <div class="row">
                     <div class="col-12 text-center">
                       <button type="button"><a href="#">Read more</a></button>
                     </div>
               </div>
          </div>
      </div>
      <div class="five">
          <h2 class="text-center">Choose your cup of tea</h2>
          <br>
          <div class="row container">
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/1.jpeg">
              </div>
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/2.jpeg">
              </div>
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/3.jpeg">
              </div>
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/4.jpeg">
              </div>
          </div>
          <br>
          <div class="row container">
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/5.jpeg">
              </div>
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/6.jpeg">
              </div>
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/7.jpeg">
              </div>
              <div class="col-12 col-md-3 col-lg-3 col-xl-3">
                  <img src="images/cup/8.jpeg">
              </div>
          </div>
      </div>
      <div class="six">
        <div class="container text-center">
            <i class="fas fa-quote-left"></i>
            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage</p>
        </div>
        <div class="people row">
          <div class="col-12 col-md-4 col-lg-4 col-xl-4">
              <img class="rounded-circle" src="images/people/1.jpeg">
              <h3 class="text-center">Anna Doe</h3>
              <p class="text-center">There are many variations of passages of Lorem Ipsum available</p>
          </div>
          <div class="col-12 col-md-4 col-lg-4 col-xl-4">
              <img class="rounded-circle" src="images/people/2.jpeg">
              <h3 class="text-center">Anna Doe</h3>
              <p class="text-center">There are many variations of passages of Lorem Ipsum available</p>
          </div>
          <div class="col-12 col-md-4 col-lg-4 col-xl-4">
              <img class="rounded-circle" src="images/people/3.jpeg">
              <h3 class="text-center">Anna Doe</h3>
              <p class="text-center">There are many variations of passages of Lorem Ipsum available</p>
          </div>
        </div>
      </div>
      <div class="letter text-center">
        <h1 class="text-center">Subscribe to get more info</h1>
        <p class="text-center">It is a long established fact that a reader</p>
        <div class="container">
          <form action="/action_page.php">
              <div class="form-group">
                 <input type="email" class="form-control" id="email">
               </div>
                <div class="form-group">
                <input type="telephone" class="form-control" id="pwd">
                </div>
           </form>
           <div class="row">
                 <div class="col-12 text-center">
                   <button type="button"><a href="#">Read more</a></button>
                 </div>
           </div>
        </div>
      </div>
      <footer>
          <p class="text-center">FREE HTML template is done by Natallia Rak. Job suggestion: natkayellow@gmail.com<br>
          bootstrap 4</p>
      </footer>
   </body>
</html>