<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room List</title>
<style>
table, th, td {
	border: 1px solid black;
	padding: 10px;
	text-align: left;
}

th, td {
	border-color: #96D4D4;
}

tr:hover {
	background-color: #D6EEEE;
}

.button {
	font-size: 19px;
	background-color: deepskyblue;
	border: 1px solid blue;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div> 
		<center><h1>ROOM LIST</h1></center>

		<div id="table root">
			<table border="2" width="100%" cellpadding="2">
				<colgroup>
					<col span="10" style="background-color: yellow">
					<col span="4" style="background-color: crimson">
				</colgroup>
				<thead>
					<tr>
						<th>Room Id</th>
						<th>Room Type</th>
						<th>Room Location</th>
						<th>NumberOf Beds</th>
						<th>Room Status</th>
						<th>Edit</th>
						<th>Delete</th>
						<th>View</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="room" items="${allroom}">
						<tr>
							<td>${room.roomId}</td>
							<td>${room.roomType}</td>
							<td>${room.roomLocation}</td>
							<td>${room.numOfBeds}</td>
							<td>${room.roomStatus}</td>
							<td><a href="updateroomform?roomId=${room.roomId}">Edit</a></td>
							<td><a href="deleteroomform?roomId=${room.roomId}">Delete</a></td>
							<td><a href="getroom?id=${room.roomId}">View</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div align="center" style="margin-top: 25px;">
			<a href="addroomform"><button class="button">Add New
					Room</button></a>
		</div>
	</div>
</body>
</html>