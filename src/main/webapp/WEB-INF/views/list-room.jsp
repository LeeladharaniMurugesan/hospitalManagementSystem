<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Room Id</th>
					<th>Room Type</th>
					<th>Room Location</th>
					<th>NumberOf Beds</th>
					<th>Room Status</th>
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
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>