<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="registerservlet" > 
name:<input type="text" name="yourname">
<font>
<br>
password:<input type="password" name="password">
<br>
gender:<input type="radio" name="gender" value="male">male
<input type="radio" name="gender" value="female">female
<br>
hobbies:<input type="checkbox" name="hobbies" value="music" >music
<input type="checkbox" name="hobbies" value ="cricket">cricket
<input type="checkbox" name="hobbies" value ="reading">reading
<br>
country:<select name="country">
<option value="united kingdom"  name="country" > uk</option>
<option value="india"  name="country"> ind</option>
<option value="russia"  name="country"> rus</option> 
</select>
</font>  
<br> 
address:<textarea rows="4" cols="50" name="address">
</textarea>
<input id="registerservlet" type="submit" value=submit>

</form>
</body>
</html>