<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student's form</title>
</head>
<body>



<form:form action="processForm" modelAttribute="student">
    <table>
        <tr>
            <td>First Name:</td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>
				<form:select path="country">
            		<form:options items="${student.countryOptions}"/>
        		</form:select>
			</td>
        </tr>
		<tr>
    		<td>Sex:</td>
    		<td>
    			Man<form:radiobutton path="sex" value="man"/>
    			Woman<form:radiobutton path="sex" value="woman"/>
    		</td>
		</tr>
		<tr>
            <td>Operating System:</td>
            <td>
                <form:checkbox path="operationgSystem" value="Windows"/>
                <form:checkbox path="operationgSystem" value="Linux"/>
                <form:checkbox path="operationgSystem" value="Mac OS"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Save Changes"/>
            </td>
        </tr>
    </table>
</form:form>




</body>
</html>