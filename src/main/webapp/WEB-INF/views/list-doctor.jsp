<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>staff_id</th>
					<th>speciality</th>
					<th>role_type</th>
					<th>normal_fees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doc" items="${alldoctor}">
					<tr>
						<td>${doc.staff_id}</td>
						<td>${doc.speciality}</td>
						<td>${doc.role_type}</td>
						<td>${doc.normal_fees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>