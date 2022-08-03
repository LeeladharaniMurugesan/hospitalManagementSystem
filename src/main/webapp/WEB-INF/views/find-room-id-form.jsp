<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getrooms">
				<div>
					<label for="roomId">Room Id</label>
					<div>
						<form:input path="roomId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomType">Room Type</label>
					<div>
						<form:input path="roomType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roomLocation">Room Location</label>
					<div>
						<form:input path="roomLocation" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="numOfBeds">Number of Beds</label>
					<div>
						<form:input path="numOfBeds" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomStatus">Room Status</label>
					<div>
						<form:input path="roomStatus" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>