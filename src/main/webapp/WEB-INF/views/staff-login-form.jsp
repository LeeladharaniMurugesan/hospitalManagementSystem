<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Login Form</title>
</head>
<body>
    <div id="root">
        <div id="form" align="center">
            <form:form action="staffpage" method="post" modelAttribute="staff">
                <h1>Staff Login</h1>
                <table>
                    <tr>
                        <td><label for="emailId">EmailId :</label></td>
                        <td><form:input path="emailId"
                                placeholder="emailId" /></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password :</label></td>
                        <td><form:input path="password" placeholder="password" type="password"/></td>
                    </tr>
                </table>
                <div>
                    <tr>
                        <td><form:button>Sign In</form:button></td>
                        <td><form:button>
                                <a href="/staffdetail/addstaffform">Sign Up</a>
                            </form:button></td>
                    </tr>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>