<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HelloWorld Form</title>
</head>
<body>


<form action="processForm" method="GET">
	<input type="text" name="studentName" placeholder="What's your name?" />
	<input type="submit" />
</form>



</body>
</html>