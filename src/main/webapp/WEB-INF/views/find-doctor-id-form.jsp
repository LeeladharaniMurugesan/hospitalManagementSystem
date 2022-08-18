<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Doctor</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://previews.123rf.com/images/giggsy25/giggsy251711/giggsy25171100134/89624948-smart-doctor-with-a-stethoscope-on-blurred-hospital-background-and-medical-icon-in-hexagonal-shaped-.jpg);
}
</style>
</head>
<body>
	<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<h1>FIND DOCTORS</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoc">
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