<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff Doctor Detail</title>
<head>
<meta charset="ISO-8859-1">
<title>Find Doctor</title>
<style><%@include file="/WEB-INF/css/style1.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://previews.123rf.com/images/giggsy25/giggsy251711/giggsy25171100134/89624948-smart-doctor-with-a-stethoscope-on-blurred-hospital-background-and-medical-icon-in-hexagonal-shaped-.jpg);
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>Staff Details</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstaff">
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
						<label for="designation" class="label-size">Designation</label>
						<div>
							<form:input path="designation" class="text-box" readonly="true"/>
						</div>
					</div>
			</form:form>
		</div>
	</div>
	<h1>Doctor Details</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="doclist">
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="speciality" class="label-size">Speciality</label>
					<div>
						<form:input path="speciality" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roleType" class="label-size">Role Type</label>
					<div>
						<form:input path="roleType" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="normalFees" class="label-size">Normal Fees</label>
					<div>
						<form:input path="normalFees" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>