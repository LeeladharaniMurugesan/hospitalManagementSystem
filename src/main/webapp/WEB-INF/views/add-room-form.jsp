<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addroom" method="post" modelAttribute="addRoom">
				<div>
					<label for="roomId">Room Id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<label for="roomType">Room Type</label>
					<div>
						<form:input path="roomType" />
					</div>
				</div>
				<div>
					<label for="roomLocation">Room Location</label>
					<div>
						<form:input path="roomLocation" />
					</div>
				</div>
				<div>
					<label for="numOfBeds">Number of beds</label>
					<div>
						<form:input path="numOfBeds" />
					</div>
				</div>
				<div>
					<label for="roomStatus">Room Status</label>
					<div>
						<form:input path="roomStatus" />
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