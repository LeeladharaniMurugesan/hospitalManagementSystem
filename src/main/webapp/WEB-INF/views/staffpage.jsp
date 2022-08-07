<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Page</title>
<style>
body {
	background-image:
		url(https://img.freepik.com/free-photo/doctor-with-stethoscope-hands-hospital-background_1423-1.jpg?w=2000);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

table, th, td {table , th, td { border:1pxsolidblack;
	border-collapse: collapse;
}

}
th {
	background-color: #04AA6D;
	color: white;
}

td {
	backgoung-colour: #c4f5dc;
}
.button {
	width: 160px;
	height: 30px;
	background-color: blue;
	color: white;
	border: 1px solid blue;
	border-radius: 5px;
	font-size: 13px;
	margin: 2px 0px 5px 12px;
}

.main_heading {
	    background-color: violet;
    width: 606px;
}
</style>
</head>
<body>
	<div class="main_heading">
		<h1>STAFF DETAILS</h1>
	</div>
	<div>
		<a href="/staffdetail/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/staffdetail/addstaffform"><button
				class="login-form button" style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/staffdetail/updatestaffform?staffId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/staffdetail/deletestaff?staffId="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/staffdetail/getstaff?id="><button
				class="login-form button" style="margin-left: 12px;">FindByStaffId</button></a>
	</div>

	<div></div>
	<div class="main_heading">
		<h1>ROOM DETAILS</h1>
	</div>
	<div>
		<a href="/room/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/room/addroomform"><button class="login-form button"
				style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/room/updateroomform?roomId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/room/deleteroomform?roomId="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/room/getroom?roomId="><button class="login-form button"
				style="margin-left: 12px;">FindByRoomId</button></a>
	</div>
	<div></div>
	<div class="main_heading">
		<h1>OPERATIONTHEATRE DETAILS</h1>
	</div>
	<div>
		<a href="/operationTheatre/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/operationTheatre/addoperationtheatreform"><button
				class="login-form button" style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/operationTheatre/updateoperationtheatreform?theatreId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/operationTheatre/deleteoperationtheatre?theatreId="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/operationTheatre/getoperationtheatre?id="><button
				class="login-form button" style="margin-left: 12px;">FindByTheatreId</button></a>
	</div>
	<div></div>
	<div class="main_heading">
		<h1>DOCTOR DETAILS</h1>
	</div>
	<div>
		<a href="/doctor/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/doctor/adddoctorform"><button class="login-form button"
				style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/doctor/updatedoctorform?staffId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/doctor/deletedoctor?staffId="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/doctor/getdoctor?id="><button class="login-form button"
				style="margin-left: 12px;">FindByDoctorId</button></a>
	</div>
	<div>
		<a href="/staffdetail/getstaffdoctor"><button
				class="login-form button" style="margin-left: 12px;">FindByStaffDoctorId</button></a>
	</div>
	<div></div>
	<div>
		<h1 class="main_heading">DOCTOR VISIT DETAILS</h1>
	</div>
	<div>
		<a href="/doctorvisit/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/doctorvisit/adddocvisitform"><button
				class="login-form button" style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/doctorvisit/updatedocvisitform?sNo="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/doctorvisit/deletedocvisit?sNo="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/doctorvisit/getdocvisit?id="><button
				class="login-form button" style="margin-left: 12px;">FindByDocVisitId</button></a>
	</div>
	<div>
		<a href="/staffdetails/getstaffdocvisit?id="><button
				class="login-form button" style="margin-left: 12px;">GetStaffDocVisitbyId</button></a>
	</div>
	<div></div>
	<div>
		<h1 class="main_heading">AMBULANCE DETAILS</h1>
	</div>
	<div>
		<a href="/ambulance/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/ambulance/addambulanceform"><button
				class="login-form button" style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/ambulance/updateambulanceform?registerId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/ambulance/deleteambulance?registerId=="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/ambulance/getambulance?id="><button
				class="login-form button" style="margin-left: 12px;">FindByAmbulanceId</button></a>
	</div>
	<div>
		<a href="/staffdetails/getambulancedetail?id="><button
				class="login-form button" style="margin-left: 12px;">GetStaffAmbulancebyId</button></a>
	</div>
	<div></div>
	<div>
		<h1 class="main_heading">BED DETAILS</h1>
	</div>
	<div>
		<a href="/bed/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/bed/addbedform"><button class="login-form button"
				style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/bed/updatebedform?bedId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/bed/deletebed?bedId="><button class="login-form button"
				style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/bed/getbeds?id="><button class="login-form button"
				style="margin-left: 12px;">FindBybedId</button></a>
	</div>
	<div>
		<a href="/room/getroombed?roomId="><button
				class="login-form button" style="margin-left: 12px;">FindByRoomId</button></a>
	</div>
	<div></div>
	<div class="main_heading">
		<h1>BOOKING CANCELLATION DETAILS</h1>
	</div>
	<div>
		<a href="/bcdetail/list"><button class="login-form button"
				style="margin-left: 12px;">List</button></a>
	</div>
	<div>
		<a href="/bcdetail/addbcform"><button class="login-form button"
				style="margin-left: 12px;">Add</button></a>
	</div>
	<div>
		<a href="/bcdetail/updatebcform?bcId="><button
				class="login-form button" style="margin-left: 12px;">Update</button></a>
	</div>
	<div>
		<a href="/bcdetail/deletebc?bcId="><button
				class="login-form button" style="margin-left: 12px;">Delete</button></a>
	</div>
	<div>
		<a href="/bcdetail/getbc?id="><button class="login-form button"
				style="margin-left: 12px;">FindBybcId</button></a>
	</div>
	<div>
		<a href="/staffdetails/getbookingcancellationdetail?id="><button
				class="login-form button" style="margin-left: 12px;">FindByStaffBookCancelId</button></a>
	</div>
</body>
</html>