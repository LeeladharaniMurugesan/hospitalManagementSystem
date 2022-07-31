<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find OperationTheatre</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getotd">
				<div>
					<label for="theatre_id">Theatre Id</label>
					<div>
						<form:input path="theatre_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="theare_type">Theatre Type</label>
					<div>
						<form:input path="theatre_type" readonly="true" />
					</div>
				</div>
				<div>
					<label for="theatre_location">Theatre Location</label>
					<div>
						<form:input path="theatre_location" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="theatre_status">Theatre Status</label>
					<div>
						<form:input path="theatre_status" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>