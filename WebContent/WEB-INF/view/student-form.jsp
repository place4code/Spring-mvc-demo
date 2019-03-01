<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student's form</title>
<style>
.error {
	color: red;
}
</style>
</head>
<body>



<form:form action="processForm" modelAttribute="student">
    <table>
        <tr>
            <td>* First Name:</td>
            <td><form:input path="firstName"/>
            <form:errors path="firstName" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td>* Last Name:</td>
            <td><form:input path="lastName"/>
            <form:errors path="lastName" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td>* Country:</td>
            <td>
				<form:select path="country">
            		<form:options items="${student.countryOptions}"/>
        		</form:select>
			</td>
        </tr>
        <tr>
            <td>* Age:</td>
            <td><form:input path="age"/>
            <form:errors path="age" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td>* Postal Code:</td>
            <td><form:input path="post"/>
            <form:errors path="post" cssClass="error"/>
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
                Windows<form:checkbox path="operatingSystems" value="Windows"/>
                Linux<form:checkbox path="operatingSystems" value="Linux"/>
                Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
            </td>
        </tr>
        <tr>
            <td>Course Code:</td>
            <td><form:input path="courseCode"/>
            <form:errors path="courseCode" cssClass="error"/>
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