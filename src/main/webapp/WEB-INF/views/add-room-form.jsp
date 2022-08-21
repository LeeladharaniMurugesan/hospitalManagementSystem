<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
<style><%@include file ="/WEB-INF/css/style.css"%>

body {
	background-image:
		url(https://wallpapercave.com/dwp1x/wp1848641.jpg);
}
</style>
</head>
<body>
	<button class="button-85" role="button" onclick="document.location='/room/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>ADD ROOM</h1>
		<div id="form">
			<form:form name="form" action="addroom" method="post" modelAttribute="addrooms">
				<div>
					<label for="roomType" class="label-size">Room Type</label>
					<div>
						<form:input path="roomType" class="text-box"
							placeholder="RoomType"
							title="RoomType can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
					</div>
				</div>
				<form:errors path="roomType" class="text-danger" />
				<div>
					<label for="roomLocation" class="label-size">Room Location</label>
					<div>
						<form:input path="roomLocation" class="text-box"
							placeholder="RoomLocation"
							title="RoomLocation can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="roomLocation" class="text-danger" />
				<div>
					<label for="numOfBeds" class="label-size">Number of beds</label>
					<div>
						<form:input path="numOfBeds" class="text-box"
							placeholder="NumOfBeds"
							title="Number of Beds should contains only numbers"
							 pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<form:errors path="numOfBeds" class="text-danger" />
				<div>
					<label for="roomStatus" class="label-size">Room Status</label>
					<div>
						<form:input path="roomStatus" class="text-box"
							placeholder="RoomStatus"
							title="RoomStatus can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" onblur="roomStatusCheck();" />
					</div>
				</div>
				<form:errors path="roomStatus" class="text-danger" />
				<div>
					<form:button class="button">Add Rooms</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>
