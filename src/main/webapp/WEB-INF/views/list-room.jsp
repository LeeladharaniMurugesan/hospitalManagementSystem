<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Room List</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}
</style>
</head>
<body>
	<div>
		<button onclick="document.location='/home/staffuse'" style="float: right;">Home</button>
		<h1>ROOM LIST</h1>

		<div id="table root">
			<table border="2" width="100%" cellpadding="2">
				<colgroup>
					<col span="10" style="background-color: #ff9999">
					<col span="4" style="background-color: white">
				</colgroup>
				<thead>
					<tr>
						<th>Room Id</th>
						<th>Room Type</th>
						<th>Room Location</th>
						<th>NumberOf Beds</th>
						<th>Room Status</th>
						<th>Edit</th>
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
							<td><a href="getroom?id=${room.roomId}">View</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div style="margin-top: 25px;">
			<a href="addroomform"><button class="button">Add New
					Room</button></a>
		</div>
	</div>
</body>
</html>