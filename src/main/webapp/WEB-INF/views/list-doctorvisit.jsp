<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctorVisit List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>S_no</th>
					<th>Staff_id</th>
					<th>Visited_date</th>
					<th>From_time</th>
					<th>To_time</th>
					<th>Dailyfees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docv" items="${alldocvisit}">
					<tr>
						<td>${docv.s_no}</td>
						<td>${docv.staff_id}</td>
						<td>${docv.visited_date}</td>
						<td>${docv.from_time}</td>
						<td>${docv.to_time}</td>
						<td>${docv.dailyfees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>