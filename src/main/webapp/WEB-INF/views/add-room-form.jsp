<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}

body {
	background-image:
		url(https://wallpapercave.com/dwp1x/wp1848641.jpg);
}
</style>
</head>
<body>
<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>ADD ROOM</h1>
	<div id="root">

		<div id="form">
			<form:form action="addroom" method="post" modelAttribute="addrooms">
				<div>
					<label for="roomType" class="label-size">Room Type</label>
					<div>
						<form:input path="roomType" class="text-box"
							placeholder="roomType"
							title="RoomType can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="roomType" class="text-danger" />
				<div>
					<label for="roomLocation" class="label-size">Room Location</label>
					<div>
						<form:input path="roomLocation" class="text-box"
							placeholder="roomLocation"
							title="RoomLocation can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="roomLocation" class="text-danger" />
				<div>
					<label for="numOfBeds" class="label-size">Number of beds</label>
					<div>
						<form:input path="numOfBeds" class="text-box"
							placeholder="NumOfBeds"
							title="RoomStatus can't be empty or must contain only alphabets" />
					</div>
				</div>
				<form:errors path="numOfBeds" class="text-danger" />
				<div>
					<label for="roomStatus" class="label-size">Room Status</label>
					<div>
						<form:input path="roomStatus" class="text-box"
							placeholder="roomtatus"
							title="RoomStatus can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="roomStatus" class="text-danger" />
				<div>
					<form:button class="button">Add Rooms</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>