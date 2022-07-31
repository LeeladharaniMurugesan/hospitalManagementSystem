<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ambulance List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>register_id</th>
					<th>purchase_date</th>
					<th>ambulance_model</th>
					<th>status</th>
					<th>staff_id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="amb" items="${allambulance}">
					<tr>
						<td>${amb.register_id}</td>
						<td>${amb.purchase_date}</td>
						<td>${amb.ambulance_model}</td>
						<td>${amb.status}</td>
						<td>${amb.staff_id}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>