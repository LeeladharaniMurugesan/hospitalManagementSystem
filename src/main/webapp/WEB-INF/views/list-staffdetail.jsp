<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style><%@include file="/WEB-INF/css/style.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
 body {
	background-image:
		url(https://thumbs.dreamstime.com/b/medical-health-care-calendar-reminder-schedule-appointment-concept-doctor-s-stethoscope-white-clean-calendar-155215414.jpg);
}
</style>
</head>
<body>
	<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>	<h1> STAFFS LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
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