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
					<th>TheatreId</th>
					<th>TheatreType</th>
					<th>TheatreLocation</th>
					<th>TheatreStatus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="opd" items="${alloperationTheatre}">
					<tr>
						<td>${opd.theatreId}</td>
						<td>${opd.theatreType}</td>
						<td>${opd.theatreLocation}</td>
						<td>${opd.theatreStatus}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>