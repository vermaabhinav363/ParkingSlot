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
  
  
        
     
      <div class="message">
          <div class="container">
              <h2 class="text-center">ADD PLACES </h2>
              <br><br><br>
              
              
              <div class="row">
                    <div class="col-12 text-center">
                 <form action="./Location.jsp" method="post">
        <div class="title">
          
        </div>
        <div class="info">
          Location
          <input class="fname" type="text" name="Locate"      required>&nbsp&nbsp
          Date
          <input class="fname" type="date" name="Date"        required>
          CheckIn
          <input class="fname" type="time" name="TimeIn"      required>
          CheckOut
          <input class="fname" type="time" name="TimeOut"     required><br><br>
          NoOfSlots
          <input class="fname" type="number" name="Slots"     required>&nbsp&nbsp
          Availability
          <input class="fname" type="number" name="Available" placeholder = "0/1"   required>&nbsp&nbsp
          TimeaAfterFree
          <input class="fname" type="time" name="TimeaAfterFree"   required>&nbsp&nbsp
          Price
          <input class="fname" input type="number" step="any" name="Price"   required><br><br>
          Image
          <input class="fname" type="text" name="Image"  placeholder = "Enter URl"    required><br><br>	
          CarRepair
          <input class="fname" type="number" name="CarRepair" placeholder = "0/1"   required>
          TyreCheck
          <input class="fname" type="number" name="TyreCheck" placeholder = "0/1"   required>
          CarWash
          <input class="fname" type="number" name="CarWash" placeholder = "0/1"   required><br><br>
          AirFilling
          <input class="fname" type="number" name="AirFilling" placeholder = "0/1"   required>
          DryCleaning
          <input class="fname" type="number" name="DryCleaning" placeholder = "0/1"   required>	<br><br>
          
          CarRepairCost
          <input class="fname" type="number"  step="any" name="CarRepairCost"     required>
          TyreCheckCost
          <input class="fname" type="number"  step="any" name="TyreCheckCost"      required>
          CarWashCost
          <input class="fname" type="number"  step="any" name="CarWashCost"        required><br><br>
          AirFillingCost
          <input class="fname" type="number"  step="any" name="AirFillingCost"     required>
          DryCleaningCost
          <input class="fname" type="number"  step="any" name="DryCleaningCost"    required><br><br>	
          
          Worker Name Assigned
          <input class="fname" type="text" name="WorkerName"      required>&nbsp&nbsp
          Rating Worker
          <input class="fname" type="number"  step="any" name="Rating"    required>
          ImageWorker
          <input class="fname" type="text" name="TmageWorker"      required>&nbsp&nbsp
          
        
         <br> 
        </div>
        <br> 
        <button type="submit" >Submit</button>
      </form>
      
       <div class="message">
          <div class="container">
              <h2 class="text-center">REMOVE PLACES </h2>
              <br><br><br>
          <form action="./Location.jsp" method="post">
        <div class="title">
          
        </div>
        <div class="info">
          Location
          <input class="fname" type="text" name="Locate"      required>&nbsp&nbsp
          Date
          <input class="fname" type="date" name="Date"        required>
         
          
        
         <br> 
        </div>
        <br> 
        <button type="submit" >Submit</button>
      </form>
      <br><br><br><br>
              
              <div class="row">
                    <div class="col-12 text-center">
                 <form action="./Location.jsp" method="post">
        <div class="title">
                    </div>
              </div>
          </div>
      </div>
      </div>
      
      
      
      
     
   
      <footer>
          <p class="text-center">ADMIN BOARD<br>
          Admin  - Abhinav Verma</p>
      </footer>
   </body>
</html>