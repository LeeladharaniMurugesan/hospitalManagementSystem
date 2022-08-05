<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Login </title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="checkstafflogin" method="post" modelAttribute="staff">
                
                <div>
                    <label for="emailId">EmailId</label>
                    <div>
                        <form:input path="emailId" />
                    </div>
                </div>
                <div>
                    <label for="password">Password</label>
                    <div>
                        <form:input type ="password" path="password" />
                    </div>
                </div>
                <form:button>Staff Login</form:button>
            </form:form>
        </div>
    </div>
</body>
</html>