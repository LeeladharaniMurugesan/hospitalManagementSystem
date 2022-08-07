<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Staff</title>
<style>
body {
	background-image:
		url(https://previews.123rf.com/images/giggsy25/giggsy251711/giggsy25171100134/89624948-smart-doctor-with-a-stethoscope-on-blurred-hospital-background-and-medical-icon-in-hexagonal-shaped-.jpg);
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
.label-size{
font-size:28px;
}

.text-box{
height: 28px;
    width: 237px;
}
.button{
margin-top: 20px;
    width: 145px;
    height: 38px;
    font-size: 15px;
    background-color: deepskyblue;
    border: 2px solid blue;
    border-radius: 5px;
}
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstaffs">
					<div>
						<label for="staffId" class="label-size">Staff Id</label>
						<div>
							<form:input path="staffId"  class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="staffName" class="label-size">Staff Name</label>
						<div>
							<form:input path="staffName" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="dob" class="label-size">Dob</label>
						<div>
							<form:input path="dob" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="gender" class="label-size">Gender</label>
						<div>
							<form:input path="gender" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="phoneNo" class="label-size">PhoneNo</label>
						<div>
							<form:input path="phoneNo" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="emailId" class="label-size">EmailId</label>
						<div>
							<form:input path="emailId" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="password" class="label-size">Password</label>
						<div>
							<form:input type="password" path="password" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="designation" class="label-size">Designation</label>
						<div>
							<form:input path="designation" class="text-box" readonly="true"/>
						</div>
					</div>
					<center>
				</form:form>
			</div>
		</div>
</body>
</html>