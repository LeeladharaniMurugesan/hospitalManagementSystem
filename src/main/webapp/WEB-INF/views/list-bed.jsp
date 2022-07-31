<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bed List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>bed_id</th>
					<th>bed_type</th>
					<th>bed_status</th>
					<th>bed_size</th>
					<th>room_id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bed" items="${allbed}">
					<tr>
						<td>${bed.bed_id}</td>
						<td>${bed.bed_type}</td>
						<td>${bed.bed_status}</td>
						<td>${bed.bed_size}</td>
						<td>${bed.room_id}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>