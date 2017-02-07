<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view</title>
<style type="text/css">
 .navbar {
    background-color: #900C3F ;
      margin-bottom: 50px;
      border-radius: 0;
    }
	body, html{
	background-color: black;
     height: 100%;
 	background-repeat: no-repeat;
 	 background: url(https://s-media-cache-ak0.pinimg.com/736x/d8/59/de/d859de4b3f4e76b3c1fbbc67cbf04ba4.jpg)no-repeat center fixed;
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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container" style="margin-top:6%";> 
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
<table border="2">
<thead>
<tr class="danger">
<th>Product Id</th>
<th>Product Name</th>
<th>Product brand</th>
<th>Product price</th>
<th>Product description</th>
<th>Category name</th>
<th>Update</th>
<th>Delete</th>
</tr>
</thead>
<c:forEach var="x" items="${list}">
<tbody>
<tr>
<td>${x.product_id}</td>
<td>${x.product_name}</td>
<td>${x.product_brand}</td>
<td>${x.product_price}</td>
<td>${x.product_description}</td>
<td>${x.category_name}</td>
<td><a href="editP/${x.product_id}">Edit</a>
<td><a href="deleteP/${x.product_id}">Delete</a>
</tr>
</tbody>
</c:forEach>
</table>

</body>
</html>