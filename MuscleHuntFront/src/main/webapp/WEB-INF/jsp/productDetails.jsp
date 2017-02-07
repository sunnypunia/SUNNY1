<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:url var="a" value="/resources/images"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header1.jsp"></jsp:include>


<form action="#">
<div align="center">
<div class="row">
<div class="container">    
<div class=panel">
    <div class="col-sm-6">
      
      ${a}  
       ${product.product_id}
       <img src="${a}/${product.product_id}.jpg" class="img-responsive" style="width:50%;height:40%"  alt="Image" align="middle">
       
       </div> 
      </div>

   
    <div align="center">
    <div class="row">
     <div class=panel">
     <div class="col-sm-6">
product ID: ${product.product_id}
<br><br>
Name: ${product.product_name}
<br><br>
Brand: ${product.product_brand}
<br><br>
Description: ${product.product_description}
<br><br>
Price: ${product.product_price}
<br><br>
<input class="btn btn-lg btn-danger" type="submit" value="Add To Cart"/>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>