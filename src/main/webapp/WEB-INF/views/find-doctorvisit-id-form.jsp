<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find DoctorVisit</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://img.lovepik.com/photo/50064/1609.jpg_wh300.jpg);
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>FIND DOCTORS</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoctorvisit">
			<div>
					<label for="sNo" class="label-size">SNo</label>
					<div>
						<form:input path="sNo" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="visitedDate" class="label-size">Visited Date</label>
					<div>
						<form:input path="visitedDate" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="fromTime" class="label-size">From Time</label>
					<div>
						<form:input path="fromTime" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="toTime" class="label-size">To Time</label>
					<div>
						<form:input path="toTime" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dailyFees" class="label-size">Daily Fees</label>
					<div>
						<form:input path="dailyFees" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>