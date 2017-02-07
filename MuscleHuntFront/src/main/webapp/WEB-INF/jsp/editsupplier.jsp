<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
 .navbar {
    background-color: #900C3F ;
      margin-bottom: 50px;
      border-radius: 0;
    }
	body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	 background: url(http://store.bbcomcdn.com/deploy/images/brands/bbcom/clothing/responsive/b-swoosh-y-back-tank-model-arctic-grey.png) no-repeat left fixed ;
 	font-family: 'Oxygen', sans-serif;
}

.main{
 	margin-top: 70px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
	}

</style>
<title>supplier</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container" style="margin-top:6%";> 
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Supplier</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form:form action="/MuscleHuntFront/editsupplier">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <form:hidden path="supplier_id" class="form-control" placeholder="supplier_id" name="supplier_id" />
			    		</div>
			    		<div class="form-group">
			    		    <form:input path="supplier_name" class="form-control" placeholder="supplier_name" name="supplier_name" type="text"/>
			    		</div>
			    		<div class="form-group">
			    		    <form:input path="supplier_address" class="form-control" placeholder="supplier_address" name="supplier_address" type="text"/>
			    		</div>
			 
			    		<input class="btn btn-lg btn-danger btn-block" type="submit" value="update"/>
			    	</fieldset>
			      	</form:form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>