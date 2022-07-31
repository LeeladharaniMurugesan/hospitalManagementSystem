<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getroom">
				<div>
					<label for="room_id">Room Id</label>
					<div>
						<form:input path="room_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="room_type">Room Type</label>
					<div>
						<form:input path="room_type" readonly="true" />
					</div>
				</div>
				<div>
					<label for="room_location">Room Location</label>
					<div>
						<form:input path="room_location" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="numof_beds">Number of Beds</label>
					<div>
						<form:input path="numof_beds" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="room_status">Room Status</label>
					<div>
						<form:input path="room_status" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>