<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>view</title>

</head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body ng-app="myApp" ng-controller="myCtrl">
<jsp:include page="header1.jsp"></jsp:include>
<div class="container" style="margin-top:6%";> 
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
<table border="2">
<table border="2">


<th>Product Id</th>
<th>Product Name</th>
<th>Product brand</th>
<th>Product price</th>
<th>Product description</th>
<th>View Details</th>
<tr ng-repeat="x in list">
<td>{{x.product_id}}</td>
<td>{{x.product_name}}</td>
<td>{{x.product_brand}}</td>
<td>{{x.product_price}}</td>
<td>{{x.product_description}}</td>
<td><a href="productDetails/{{x.product_id}}">View</a>
</tr>


</table>
<script>
var app = angular.module('myApp',[]);
app.controller('myCtrl',function($scope)
		{
	$scope.list=${pr}
		});
</script>

</body>
</html>