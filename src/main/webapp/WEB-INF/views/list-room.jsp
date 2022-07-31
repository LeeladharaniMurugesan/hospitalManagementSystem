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
					<th>Room_id</th>
					<th>Room_type</th>
					<th>Room_location</th>
					<th>Numof_beds</th>
					<th>Room_status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="room" items="${allroom}">
					<tr>
						<td>${room.room_id}</td>
						<td>${room.room_type}</td>
						<td>${room.room_location}</td>
						<td>${room.numof_beds}</td>
						<td>${room.room_status}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>