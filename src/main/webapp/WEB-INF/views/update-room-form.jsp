<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Room</title>
<style><%@include file ="/WEB-INF/css/style.css"%>

body {
	background-image:
		url(https://images.unsplash.com/photo-1519494080410-f9aa76cb4283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80);
}
</style>
</head>
<body>
<button  class="button-85" role="button" onclick="document.location='/room/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>UPDATE ROOM</h1>
	<div id="form">
		<form:form action="updateroom" method="post"
			modelAttribute="updaterooms">
			<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="RoomId" class="text-box"
						title="RoomId cannot be empty and should contains only number"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
			<div>
				<label for="roomType" class="label-size">Room Type</label>
				<div>
					<form:input path="RoomType" class="text-box" placeholder="roomType"
						title="RoomType can't be empty or must contain only alphabets"
						pattern="^[A-Za-z\s]*$" required="true"/>
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
						placeholder="01"
						title="Number of Beds should contains only numbers"
						pattern="^[0-9]+$" required="true" />
				</div>
				</div>
				<form:errors path="numOfBeds" class="text-danger" />
				<div>
					<label for="roomStatus" class="label-size">Room Status</label>
					<div>
						<form:input path="roomStatus" class="text-box"
							placeholder="roomtatus" 
							title="RoomStatus can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="roomStatus" class="text-danger" />
				<div>
					<form:button class="button">Update Rooms</form:button>
				</div>
		</form:form>
	</div>
</body>
</html>
