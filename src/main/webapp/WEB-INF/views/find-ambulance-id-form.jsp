<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Ambulance</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getambulance">
					<div>
					<label for="register_id">Register id</label>
					<div>
						<form:input path="register_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="purchase_date">Purchase_date </label>
					<div>
						<form:input path="purchase_date" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ambulance_model">Ambulance_model</label>
					<div>
						<form:input path="ambulance_model" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staff_id">Staff id</label>
					<div>
						<form:input path="staff_id" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>