<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

<form action="RegisterUserController" method="post">
  First name:<br>
  <input type="text" name="firstname"><br>
  Last name:<br>
  <input type="text" name="lastname"><br>
  Address 1:<br>
  <input type="text" name="address1"><br>
  Address 2:<br>
  <input type="text" name="address2"><br>
  City:<br>
  <input type="text" name="city"><br>
  State:<br>
  <input type="text" name="state"><br>
  Zip Code:<br>
  <input type="text" name="zipcode"><br>
  Country:<br>
  <input type="text" name="country"><br>
  <br>
  <input type="submit" value="Submit">
</form>

</body>
</html>