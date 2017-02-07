<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
<style>
.navbar {
    background-color: #900C3F ;
      margin-bottom: 50px;
      border-radius: 0;
    }
.jumbotron {
background: #900C3F;
color: #FFF;
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
<title>contact us</title>
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
          <li><a href="#">whey</a></li>
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
        
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
 	 <li class="active"><a href="login"><span class="glyphicon glyphicon-user"></span>Your account</a></li>
      <li><a href="registration"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
      <li><a href="contactus"><span class="glyphicon glyphicon-contact-us"></span> Contact Us</a></li>     
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-danger pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Twitter, Inc.</strong><br>
                janakpuri opposite pillar no.573<br>
                inside NIIT<br>
               New Delhi<br>
                <abbr title="Phone">
                    P:</abbr>
                95-----100
            </address>
            <address>
                <strong>MuscleHunt</strong><br>
                <a href="mailto:#">contact@musclehunt.com</a>
            </address>
            </form>
        </div>
    </div>
</div>
</body>
</html>