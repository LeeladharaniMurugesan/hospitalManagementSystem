<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatestaffs" method="post" modelAttribute="updatestaff">
				<div>
					<label for="staff_id">Staff id</label>
					<div>
						<form:input path="staff_id" />
					</div>
				</div>
				<div>
					<label for="staff_name">Doctor Name</label>
					<div>
						<form:input path="staff_name" />
					</div>
				</div>
				<div>
					<label for="dob">dob</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="gender">gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="phone_no">phoneno</label>
					<div>
						<form:input path="phone_no" />
					</div>
				</div>
				<div>
					<label for="email_id">email_id</label>
					<div>
						<form:input path="email_id" />
					</div>
				</div>
				<div>
					<label for="designation">desgination</label>
					<div>
						<form:input path="designation" />
					</div>
				</div>
				<div>
					<label for="password">password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<form:button>Update Staff</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>