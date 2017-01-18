<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Ser" method="post">
UserName:<input type="text" name="username"><br>
Password:<input type="password" name="password"><br>
Gender:<input type="radio" value="male" name="gender">Male<br>
<input type="radio" value="Female" name="gender">Female<br>
<input type="radio" value="other" name="gender">Other<br>
Hobbies:<input type="checkbox" name="hobbies" value="cricket"> cricket<br>
<input type="checkbox" name="hobbies" value="music"> music<br>
<input type="checkbox" name="hobbies" value="byker"> bike<br>
Country:<select name="country">
<option value="australia" name="country">Australia</option>
<option value="argentina" name="country">Argentina</option>
<option value="bangladesh" name="country">Banladesh</option>
<option value="pakistan" name="country">Pakistan</option>
<option value="Usa" name="country">USA</option>
<option value="india" name="country">INDIA</option>
</select><br>&nbsp;
Address:<textarea rows="4" cols="25" name="address"></textarea><br>
<input type="submit" value="login">
<input type="reset">
</form>


</body>
</html>