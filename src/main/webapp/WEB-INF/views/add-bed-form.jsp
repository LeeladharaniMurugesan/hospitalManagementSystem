<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Bed</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://images.unsplash.com/photo-1538108149393-fbbd81895907?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80);
}
</style>
</head>
<body>
		<button class="button-85" role="button" onclick="document.location='/bed/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>ADD BEDS</h1>
		<div id="form">
			<form:form action="addbed" method="post" modelAttribute="addbeds">
				<div>
					<label for="bedType" class="label-size">Bed Type </label>
					<div>
						<form:input path="bedType" class="text-box" placeholder="Standard"
							title="BedType can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
					</div>
				</div>
				<form:errors path="bedType" class="text-danger" />
				<div>
					<label for="bedStatus" class="label-size">Bed Status</label>
					<div>
						<form:input path="bedStatus" class="text-box" placeholder="Booked"
							title="BedStatus can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" /> 
					</div>
				</div>
				<form:errors path="bedStatus" class="text-danger" />
				<div>
					<label for="bedSize" class="label-size">Bed Size</label>
					<div>
						<form:input path="bedSize" class="text-box" placeholder="Size"
							title="BedSize can't be empty"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="bedSize" class="text-danger" />
				<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="roomId" class="text-box"
						title="RoomId cannot be empty and should contains only number"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<form:errors path="roomId" class="text-danger" />
				<div>
					<form:button class="button">Add Bed</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>