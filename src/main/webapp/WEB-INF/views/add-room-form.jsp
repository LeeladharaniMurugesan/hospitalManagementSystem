<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addroom">
				<div>
					<label for="room_id">Room id</label>
					<div>
						<form:input path="room_id" />
					</div>
				</div>
				<div>
					<label for="room_type">Room Type</label>
					<div>
						<form:input path="room_type" />
					</div>
				</div>
				<div>
					<label for="room_location">Room Location</label>
					<div>
						<form:input path="room_location" />
					</div>
				</div>
				<div>
					<label for="numof_beds">Number of beds</label>
					<div>
						<form:input path="numof_beds" />
					</div>
				</div>
				<div>
					<label for="room_status">Room Status</label>
					<div>
						<form:input path="room_status" />
					</div>
				</div>
				<div>
					<form:button>Add Room</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>