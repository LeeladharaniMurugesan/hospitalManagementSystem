<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Doctor</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatedoctor" method="post" modelAttribute="updatedoc">
				<div>
					<label for="staff_id">Staff id</label>
					<div>
						<form:input path="staff_id" />
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" />
					</div>
				</div>
				<div>
					<label for="role_type">Role Type</label>
					<div>
						<form:input path="role_type" />
					</div>
				</div>
				<div>
					<label for="normal_fees">Normal fees</label>
					<div>
						<form:input path="normal_fees" />
					</div>
				</div>
				<div>
					<form:button>Update Doctor</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>