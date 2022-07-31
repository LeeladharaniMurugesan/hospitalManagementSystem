<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Bed</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatebeds" method="post" modelAttribute="updatebed">
					<div>
					<label for="bed_id">Bed id</label>
					<div>
						<form:input path="bed_id" />
					</div>
				</div>
				<div>
					<label for="bed_type">Bed Type </label>
					<div>
						<form:input path="bed_type" />
					</div>
				</div>
				<div>
					<label for="bed_status">Bed Status</label>
					<div>
						<form:input path="bed_status" />
					</div>
				</div>
				<div>
					<label for="bed_size">Bed Size</label>
					<div>
						<form:input path="bed_size" />
					</div>
				</div>
				<div>
					<label for="room_id">Room id</label>
					<div>
						<form:input path="room_id" />
					</div>
				</div>
				<div>
					<form:button>Update Bed</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>