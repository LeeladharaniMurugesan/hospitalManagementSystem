<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Login Form</title>
<style>
body {
	background-image:
		url(https://previews.123rf.com/images/chagin/chagin1810/chagin181000080/110951221-young-female-doctor-on-modern-clinic-background-horizontal-image-for-website-design-.jpg);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}
.login-form{
width: 75px;
    height: 30px;
    font-size: 17px;
    background-color: lightblue;
    border: 1px solid blue;
    border-radius: 3px;
    color: blue;
}
</style>
</head>

<body>
	<div id="root" style="width: auto;">
		<div id="form" align="center">
			<form:form action="staffpage" method="post" modelAttribute="staff">
				<h1 style="font-size: 68px;">Staff Login</h1>


				<div style="margin: 14px 0px 14px 0px;">
					<label for="emailId" style="font-size: 35px;">EmailId </label>

					<form:input path="emailId" placeholder="emailId" style="width: 20%;height: 35px;margin-left: 20px;font-size: 17px;" />
				</div>
				<div style="margin: 14px 0px 14px 0px;">
					<label for="password" style="font-size: 35px;">Password </label>
					<form:input path="password" placeholder="password" type="password" style="width: 20%;height: 35px;font-size: 17px;" />
				</div>
				<div style="margin-top: 20px;margin-left: 42px;">
					<form:button class="login-form">Sign In</form:button>
					<form:button class="login-form" style="margin-left: 12px;">
						<a href="/staffdetail/addstaffform">Sign Up</a>
					</form:button>

				</div>
			</form:form>
		</div>
	</div>
</body>
</html>