<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update OperationTheatre</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateopt" method="post" modelAttribute="updateotd">
				<div>
					<label for="theatre_id">Theatre id</label>
					<div>
						<form:input path="theatre_id" />
					</div>
				</div>
				<div>
					<label for="theatre_type">Theatre Type</label>
					<div>
						<form:input path="theatre_type" />
					</div>
				</div>
				<div>
					<label for="theatre_location">Theatre Location</label>
					<div>
						<form:input path="theatre_location" />
					</div>
				</div>
				<div>
					<label for="theatre_status">Theatre Status</label>
					<div>
						<form:input path="theatre_status" />
					</div>
				</div>
				<div>
					<form:button>Update OpeartionTheatre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>