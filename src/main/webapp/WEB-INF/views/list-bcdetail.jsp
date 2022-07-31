<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookingCancellation List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>bc_id</th>
					<th>bc_type</th>
					<th>resource_id</th>
					<th>booking_date</th>
					<th>fromdate</th>
					<th>todate</th>
					<th>staff_id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bc" items="${allbc}">
					<tr>
						<td>${bc.bc_id}</td>
						<td>${bc.bc_type}</td>
						<td>${bc.resource_id}</td>
						<td>${bc.booking_date}</td>
						<td>${bc.fromdate}</td>
						<td>${bc.todate}</td>
						<td>${bc.staff_id}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>