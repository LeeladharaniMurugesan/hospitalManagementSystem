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
					<th>BcId</th>
					<th>booking_date</th>
					<th>FromDate</th>
					<th>ToDate</th>
					<th>ResourceType</th>
					<th>Resource Id</th>
					<th>StaffId</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bc" items="${allbc}">
					<tr>
						<td>${bcId}</td>
						<td>${bc.bookingDate}</td>
						<td>${bc.fromDate}</td>
						<td>${bc.toDate}</td>
						<td>${bc.resourceType}</td>
						<td>${bc.resourceId}</td>
						<td>${bc.staffId}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>