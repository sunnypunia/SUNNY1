<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<style>
 
body { 
	
    background-image: url('https://c1.staticflickr.com/7/6127/6007800842_05b0d72245_b.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center; 
    
}
.navbar {
    background-color: #900C3F ;
      margin-bottom: 50px;
      border-radius: 0;
    }
.jumbotron {
background: #900C3F;
color: #900C3F;
border-radius: 0px;
}
.jumbotron-sm { padding-top: 24px;
padding-bottom: 24px; }
.jumbotron small {
color: #FFF;
}
.h1 small {
font-size: 24px;
}
</style>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
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
   <li class="active"><a href ="index">Home</a>
   <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="adds">Add supplier</a></li>
          <li><a href="viewsupplier">View supplier</a></li>   
        </ul>
        </li>
<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addp">Add product</a></li>
          <li><a href="viewproduct">View product</a></li>
          
          
        </ul>
        </li>
<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addc">Add category</a></li>
           <li><a href="viewcategory">View category</a></li> 
             </ul>
             </li>
         </ul>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="index"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
       
        
     
      <li><a href="contactus"><span class="glyphicon glyphicon-contact-us"></span> Contact Us</a></li>     
      
       <li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
     
      
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Welcome Admin <small>Time to establish</small></h1>
            </div>
        </div>
    </div>
</div>

</body>
</html>