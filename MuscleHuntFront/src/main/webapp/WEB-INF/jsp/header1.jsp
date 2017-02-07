<!DOCTYPE html>
 <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
  <title>admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
 <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   -->
  <script type="text/javascript">
  $(document).ready(function() {
	    $(".dropdown-toggle").dropdown();
	});
</script>

  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
    background-color: #900C3F ;
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
     background-color:#000000;
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
   
      background-color:black;
      padding: 25px;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
      <a class="navbar-brand" href="#">muscleHUNT</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
         <ul class="nav navbar-nav">
   <li><a href ="index">Home</a>
   <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Your Goal
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Lean mass</a></li>
          <li><a href="#">Gain weight</a></li>
          <li><a href="#">Weight loss</a></li>
          
          
        </ul>
        </li>
<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="whey">whey</a></li>
          <li><a href="#">casien</a></li>
          <li><a href="#">bcaa</a></li>
          <li><a href="#">pre-workout</a></li>
          <li><a href="#">post-workout</a></li>
          <li><a href="#">energy bars</a></li>
          
        </ul>
        </li>
<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Your Sport
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Bodybuilding</a></li>
           <li><a href="#">Athlete</a></li> 
           <li><a href="#">Boxing</a></li>
            <li><a href="#">Running</a></li>
             <li><a href="#">Fitness</a></li>
             </ul>
             </li>
         </ul>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        
       
       
        <c:if test="${empty username}">
 	 <li><a href="login"><span class="glyphicon glyphicon-user"></span>Login</a></li>
      <li><a href="registration"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
      <li><a href="Admin"><span class="glyphicon glyphicon-Admin"></span> Admin</a></li>
      </c:if>
      <li><a href="contactus"><span class="glyphicon glyphicon-contact-us"></span> Contact Us</a></li>     
      <c:if test="${not empty username}">
       <li><a href="logout1"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
     <li>Ram Ram ,<%=session.getAttribute("username") %>
      </c:if>
      </ul>
    </div>
  </div>
</nav>


</body>
</html>