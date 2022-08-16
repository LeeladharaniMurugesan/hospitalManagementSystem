<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Room</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}

body {
	background-image:
		url(https://images.unsplash.com/photo-1512678080530-7760d81faba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80);
}
</style>
</head>
<body>
	<h1>FIND ROOM DETAILS</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getrooms">
				<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="roomId" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomType" class="label-size">Room Type</label>
					<div>
						<form:input path="roomType" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roomLocation" class="label-size">Room Location</label>
					<div>
						<form:input path="roomLocation" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="numOfBeds" class="label-size">Number of Beds</label>
					<div>
						<form:input path="numOfBeds" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomStatus" class="label-size">Room Status</label>
					<div>
						<form:input path="roomStatus" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>