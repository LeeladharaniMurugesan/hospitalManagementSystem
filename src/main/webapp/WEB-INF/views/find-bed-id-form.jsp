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
			<form:form action="" method="post" modelAttribute="getbeds">
					<div>
					<label for="bed_id">Bed id</label>
					<div>
						<form:input path="bed_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bed_type">Bed Type </label>
					<div>
						<form:input path="bed_type" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bed_status">Bed Status</label>
					<div>
						<form:input path="bed_status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bed_size">Bed Size</label>
					<div>
						<form:input path="bed_size" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="room_id">Room id</label>
					<div>
						<form:input path="room_id" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>