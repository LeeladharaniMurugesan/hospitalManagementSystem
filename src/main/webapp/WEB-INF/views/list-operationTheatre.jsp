<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OperationTheatre List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Theatre_id</th>
					<th>Theatre_Type</th>
					<th>Theatre_location</th>
					<th>Theatre_status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="opd" items="${allotd}">
					<tr>
						<td>${opd.theatre_id}</td>
						<td>${opd.theatre_type}</td>
						<td>${opd.theatre_location}</td>
						<td>${opd.theatre_status}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>