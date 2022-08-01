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
					<th>StaffId</th>
					<th>StaffName</th>
					<th>Dob</th>
					<th>Gender</th>
					<th>PhoneNo</th>
					<th>EmailId</th>
					<th>Password</th>
					<th>Designation</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="staff" items="${allstaff}">
					<tr>
						<td>${staff.staffId}</td>
						<td>${staff.staffName}</td>
						<td>${staff.dob}</td>
						<td>${staff.gender}</td>
						<td>${staff.phoneNo}</td>
						<td>${staff.emailId}</td>
						<td>${staff.password}</td>
						<td>${staff.designation}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>