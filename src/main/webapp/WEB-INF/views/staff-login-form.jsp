<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff Login Form</title>
<style><%@include file ="/WEB-INF/css/style2.css"%>
</style>
</head>
<body>
	<div id="root" style="width: auto;">
		<div id="form">
			<form:form action="staffpage" method="post" modelAttribute="staff" >
				<h1 style="font-size: 68px;">Staff Login</h1>
				<div style="margin: 14px 0px 14px 0px;">
					<label for="emailId" style="font-size: 35px;">EmailId </label>
					<form:input path="emailId" placeholder="emailId" style="width: 20%;height: 35px;margin-left: 20px;font-size: 17px;"/>
				</div>
				<div style="margin: 14px 0px 14px 0px;">
					<label for="password" style="font-size: 35px;">Password </label>
					<form:input path="password" placeholder="password" type="password" style="width: 20%;height: 35px;font-size: 17px;"/>
				</div>
				<span style="color:red;margin-left:64px;">${result}</span>
				<div style="margin-top: 20px;margin-left: 42px;">
					<form:button class="btn">Sign In</form:button>
					<form:button class="btn" style="margin-left: 12px;">
						<a style="text-decoration: none; " href="/staffdetail/addstaffform">Sign Up</a>
					</form:button>
				</div>
			</form:form>
			
		</div>
	</div>
</body>
</html>