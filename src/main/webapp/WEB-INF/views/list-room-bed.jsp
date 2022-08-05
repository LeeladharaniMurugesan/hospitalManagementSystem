<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Bed Detail</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action=" " method="post" modelAttribute="getroom">
				<div>
					<label for="roomId">Room Id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<label for="roomType">Room Type</label>
					<div>
						<form:input path="roomType" />
					</div>
				</div>
				<div>
					<label for="roomLocation">Room Location</label>
					<div>
						<form:input path="roomLocation" />
					</div>
				</div>
				<div>
					<label for="numOfBeds">Number of beds</label>
					<div>
						<form:input path="numOfBeds" />
					</div>
				</div>
				<div>
					<label for="roomStatus">Room Status</label>
					<div>
						<form:input path="roomStatus" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="bedlist">
		<table border=2>
			<thead>
				<tr>
					<th>BedId</th>
					<th>BedType</th>
					<th>BedStatus</th>
					<th>BedSize</th>
					<th>RoomId</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bed" items="${bedlist}">
					<tr>
						<td>${bed.bedId}</td>
						<td>${bed.bedType}</td>
						<td>${bed.bedStatus}</td>
						<td>${bed.bedSize}</td>
						<td>${bed.roomId}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>