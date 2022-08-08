<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Staff</title>
<style type="text/css">
body {
	background-image:
		url(https://st2.depositphotos.com/2065849/9678/i/950/depositphotos_96789564-stock-photo-medical-drip-in-hospital-corridor.jpg);
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

.label-size {
	font-size: 28px;
}

.text-box {
	height: 28px;
	width: 237px;
}

.button {
	margin-top: 10px;
	width: 130px;
	height: 38px;
	font-size: 15px;
	background-color: deepskyblue;
	border: 2px solid blue;
	border-radius: 5px;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>

	<h1>
		<center>WELCOME STAFFS!!!</center>
	</h1>

	<center>
		<div id="root">
			<div id="form">
				<form:form action="addstaff" method="post"
					modelAttribute="addstaffs">
					<div>
						<label for="staffId" class="label-size">Staff Id</label>
						<div>
							<form:input path="staffId" class="text-box" placeholder="StaffId" />
						</div>
					</div>
					<div>
						<label for="staffName" class="label-size">Staff Name</label>
						<div>
							<form:input path="staffName" class="text-box" placeholder="StaffName"/>
						</div>
					</div>
					<form:errors path="staffName" class="text-danger" />
					<div>
						<label for="dob" class="label-size">Dob</label>
						<div>
							<form:input type="Date" path="dob" class="text-box" placeholder="Dob" />
						</div>
					</div>
					<div>
						<label for="gender" class="label-size">Gender</label>
						<div>
							<form:input path="gender" class="text-box" placeholder="Gender"/>
						</div>
					</div>
					<form:errors path="gender" class="text-danger" />
					<div>
						<label for="phoneNo" class="label-size">PhoneNo</label>
						<div>
							<form:input path="phoneNo" class="text-box" placeholder="PhoneNo" />
						</div>
					</div>
					<form:errors path="phoneNo" class="text-danger" />
					<div>
						<label for="emailId" class="label-size">EmailId</label>
						<div>
							<form:input path="emailId" class="text-box" placeholder="EmailId" />
						</div>
					</div>
					<form:errors path="emailId" class="text-danger" />
					<div>
						<label for="password" class="label-size">Password</label>
						<div>
							<form:input type="password" path="password" class="text-box" placeholder="Password"/>
						</div>
					</div>
					<div>
						<label for="designation" class="label-size">Designation</label>
						<div>
							<form:input path="designation" class="text-box" placeholder="Designation"/>
						</div>
					</div>
					<form:errors path="designation" class="text-danger" />
					<div>
						<form:button class="button">Add New Staff</form:button>
					</div>
					<center>
				</form:form>
			</div>
		</div>
</body>
</html>