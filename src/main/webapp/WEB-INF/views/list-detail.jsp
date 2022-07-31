<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Staff_id</th>
					<th>staff_name</th>
					<th>dob</th>
					<th>gender</th>
					<th>Phone-no</th>
					<th>email_id</th>
					<th>designation</th>
					<th>password</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doc" items="${allstaff}">
					<tr>
						<td>${doc.staff_id}</td>
						<td>${doc.staff_name}</td>
						<td>${doc.dob}</td>
						<td>${doc.gender}</td>
						<td>${doc.phone_no}</td>
						<td>${doc.email_id}</td>
						<td>${doc.designation}</td>
						<td>${doc.password}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>