<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Doctor</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoctor">
				<div>
					<label for="staff_id">Staff Id</label>
					<div>
						<form:input path="staff_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="Speciality" readonly="true" />
					</div>
				</div>
				<div>
					<label for="role_type">Role Type</label>
					<div>
						<form:input path="role_type" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="normal_fees">Normal Fees</label>
					<div>
						<form:input path="normal_fees" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>