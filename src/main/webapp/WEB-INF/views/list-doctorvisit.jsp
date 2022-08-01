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
					<th>SNo</th>
					<th>StaffId</th>
					<th>VisitedDate</th>
					<th>FromTime</th>
					<th>ToTime</th>
					<th>DailyFees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docv" items="${alldocvisit}">
					<tr>
						<td>${docv.sNo}</td>
						<td>${docv.staffId}</td>
						<td>${docv.visitedDate}</td>
						<td>${docv.fromTime}</td>
						<td>${docv.toTime}</td>
						<td>${docv.dailyFees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>