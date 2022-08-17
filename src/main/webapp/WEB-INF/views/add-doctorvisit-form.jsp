<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add DoctorVisit</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://wallpapercave.com/dwp1x/wp2968505.jpg);
}
</style>
<script>
<%@include file="/WEB-INF/script/staff.js"%>
</script>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>WELCOME DOCTORS</h1>
		<div id="form">
			<form:form name="form" action="adddocvisitdetail" method="post" modelAttribute="adddocvisit">
				<div>
					<label for="staffId" class="label-size">StaffId </label>
					<div>
						<form:input path="staffId" class="text-box" placeholder="101"
						title="StaffId can't be empty" name="staffId"
						pattern="^[0-9]+$" required="true" onblur="staffIdCheck();"/>
					</div>
				</div>
				<div>
					<label for="visitedDate" class="label-size">Visited Date</label>
					<div>
						<form:input type="Date" path="visitedDate" class="text-box"/>
					</div>
				</div>
				<form:errors path="visitedDate" class="text-danger" />
				<div>
					<label for="fromTime" class="label-size">From Time</label>
					<div>
						<form:input path="fromTime" type="time" class="text-box" placeholder="12:00"/>
					</div>
				</div>
				<form:errors path="fromTime" class="text-danger" />
				<div>
					<label for="toTime" class="label-size">To Time</label>
					<div>
						<form:input path="toTime" type="time" class="text-box" placeholder="12:00"/>
					</div>
				</div>
				<form:errors path="toTime" class="text-danger"/>
				<div>
					<label for="dailyFees"class="label-size">DailyFees</label>
					<div>
						<form:input path="dailyFees" class="text-box" name="form"
						title="DailyFees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true" onblur="dailyFeesCheck();"/>
					</div>
				</div>
				<div>
					<form:button class="button">Add DoctorVisit</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>