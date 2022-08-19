<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<button style="    font-size: 12px;
    background-color: #f44336;
    color: black;
    float: left;" onclick="document.location='/home/staffuse'"><span class="fa fa-home" style="font-size:38px;"></span></button>
    <h1>STAFFS LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="10" style="background-color: #FFCE44">
				<col span="4" style="background-color: #B3446C">
			</colgroup>
			<thead>
				<tr>
					<th>STAFF ID</th>
					<th>STAFF NAME</th>
					<th>DATE OF BIRTH</th>
					<th>GENDER</th>
					<th>PHONE NUMBER</th>
					<th>EMAILID</th>
					<th>DESIGNATION</th>
					<th>EDIT AND VIEW</th>
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
						<td><a href="updatestaffform?staffId=${staff.staffId}">Edit</a> <a href="getstaff?id=${staff.staffId}">View</a></td>
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