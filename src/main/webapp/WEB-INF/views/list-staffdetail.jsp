<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'" style="float: right;">Home</button>
	<h1> STAFFS LIST</h1>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<colgroup>
				<col span="10" style="background-color: #FFCE44">
				<col span="4" style="background-color: #B3446C">
			</colgroup>
			<thead>
				<tr>
					<th>StaffId</th>
					<th>StaffName</th>
					<th>DateOfBirth</th>
					<th>Gender</th>
					<th>PhoneNo</th>
					<th>EmailId</th>
					<th>Designation</th>
					<th>Edit</th>
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
						<td><a href="getstaff?id=${staff.staffId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<a href="addstaffform" ><button class="button">Add New Staff</button></a>
	</div>
</body>
</html>