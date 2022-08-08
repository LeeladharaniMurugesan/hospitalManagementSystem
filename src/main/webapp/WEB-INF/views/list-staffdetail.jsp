<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style>
table, th, td {
	border: 1px solid black;
	padding: 10px;
	text-align: left;
}

th, td {
	border-color: #96D4D4;
}

tr:hover {
	background-color: #D6EEEE;
}

.button {
	font-size: 19px;
    background-color: deepskyblue;
    border: 1px solid blue;
    border-radius: 5px;
}
</style>
</head>
<body>
	<center><h1> STAFFS LIST</h1></center>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<colgroup>
				<col span="10" style="background-color: plum">
				<col span="4" style="background-color: crimson">
			</colgroup>
			<thead>
				<tr>
					<th>StaffId</th>
					<th>StaffName</th>
					<th>Dob</th>
					<th>Gender</th>
					<th>PhoneNo</th>
					<th>EmailId</th>
					<th>Designation</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
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
						<td>${staff.designation}</td>
						<td><a href="updatestaffform?staffId=${staff.staffId}">Edit</a></td>
						<td><a href="deletestaff?staffId=${staff.staffId}">Delete</a></td>
						<td><a href="getstaff?id=${staff.staffId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div align="center">
		<a href="addstaffform" ><button class="button">Add New Doctor</button></a>
	</div>
</body>
</html>