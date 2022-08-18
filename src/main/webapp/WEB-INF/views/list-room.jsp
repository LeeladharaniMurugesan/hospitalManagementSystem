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
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
 body {
	background-image:
		url(https://img.freepik.com/free-vector/clean-medical-patterned-background-vector_53876-140867.jpg?w=826&t=st=1660760346~exp=1660760946~hmac=94b2f8a92cea8e0c6b1bcc857e0bcb539b3a9dba8ad36e03082ab462c68d2837);
}
</style>
</head>
<body>
	<div>
			<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
		<h1>ROOM LIST</h1>

		<div id="table root">
			<table class="table-size">
			<caption></caption>
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