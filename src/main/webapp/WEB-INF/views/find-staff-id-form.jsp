<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Staff</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstaff">
				<div>
					<label for="staff_id">Staff id</label>
					<div>
						<form:input path="staff_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staff_name">Staff Name</label>
					<div>
						<form:input path="staff_name" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phone_no">phoneno</label>
					<div>
						<form:input path="phone_no" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email_id">Email_id</label>
					<div>
						<form:input path="email_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="designation" readonly="true" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>