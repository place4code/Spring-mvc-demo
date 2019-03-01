<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student confirmation</title>
</head>
<body>

Student: ${student.firstName}, ${student.lastName},${student.sex }<br>
Age: ${student.age }<br>
 ${student.country}, ${student.post}

<br><br>

Operating Systems:
<ul>
	<c:forEach var="temp" items="${student.operatingSystems}">
	<li>${temp}</li>
	</c:forEach>
</ul>
<br>
Course Code: ${student.courseCode }


</body>
</html>