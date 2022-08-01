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
					<th>Staff Id</th>
					<th>Speciality</th>
					<th>Role Type</th>
					<th>Normal Fees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doc" items="${alldoctor}">
					<tr>
						<td>${doc.staffId}</td>
						<td>${doc.speciality}</td>
						<td>${doc.roleType}</td>
						<td>${doc.normalFees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>