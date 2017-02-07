<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 	 background: url(http://www.personaltrainerworthing.co.uk/wp-content/uploads/2016/11/BBcom1.png)no-repeat left fixed ;
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
<title>Category</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container" style="margin-top:6%";> 
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Category</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form action="addcategory">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="category_id" name="category_id" type="text">
			    		</div>
			    		<div class="form-group">
			    		    <input class="form-control" placeholder="category_name" name="category_name" type="text">
			    		</div>
			    		<div class="form-group">
			    		    <input class="form-control" placeholder="category_description" name="category_description" type="text">
			    		</div>
			 
			    		<input class="btn btn-lg btn-danger btn-block" type="submit" value="update">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>