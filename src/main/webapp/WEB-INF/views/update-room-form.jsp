<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Room</title>
<style type="text/css">
body {
	background-image:
		url(https://media.istockphoto.com/photos/empty-bed-in-a-hospital-ward-picture-id1094626640?k=20&m=1094626640&s=612x612&w=0&h=Y2XqFVqS_4uw2QI04f2JDFZlpQAv1LSBZz0TNVU4mGw=);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

table, th, td {table , th, td { border:1pxsolidblack;
	border-collapse: collapse;
}

}
th {
	background-color: #04AA6D;
	color: white;
}

td {
	backgoung-colour: #c4f5dc;
}

.label-size {
	font-size: 28px;
}

.text-box {
	height: 28px;
	width: 237px;
}

.button {
	margin-top: 10px;
	width: 130px;
	height: 38px;
	font-size: 15px;
	background-color: deepskyblue;
	border: 2px solid blue;
	border-radius: 5px;
}

.text-danger {
	color: red;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<h1><center>UPDATE ROOM<center></h1>
	<center>
	<div id="root">
	
		<div id="form">
			<form:form action="updateroom" method="post" modelAttribute="updaterooms">
				<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="roomId" class="text-box" />
					</div>
				</div>
				<div>
					<label for="roomType" class="label-size">Room Type</label>
					<div>
						<form:input path="roomType" class="text-box" />
					</div>
				</div>
				<form:errors path="roomType" class="text-danger" />
				<div>
					<label for="roomLocation" class="label-size">Room Location</label>
					<div>
						<form:input path="roomLocation" class="text-box" />
					</div>
				</div>
				<form:errors path="roomLocation" class="text-danger" />
				<div>
					<label for="numOfBeds" class="label-size">Number of beds</label>
					<div>
						<form:input path="numOfBeds" class="text-box" />
					</div>
				</div>
				<form:errors path="numOfBeds" class="text-danger" />
				<div>
					<label for="roomStatus" class="label-size">Room Status</label>
					<div>
						<form:input path="roomStatus" class="text-box" />
					</div>
				</div>
				<form:errors path="roomStatus" class="text-danger" />
				<div>
					<form:button class="button">Update Room</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<center>
</body>
</html>