<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update DoctorVisit</title>
<style><%@include file="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://img.lovepik.com/photo/50054/5884.jpg_wh300.jpg);
}
</style>
</head>
<body>
		<button class="button-85" role="button" onclick="document.location='/doctorvisit/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1> UPDATE DOCTORVISIT </h1>
	<div id="root">
		<div id="form">
			<form:form action="updatedoctorvisit" method="post" modelAttribute="updatedocvisit">
				<div>
					<label for="sNo" class="label-size"></label>
					<div>
						<form:input type="hidden" path="sNo" class="text-box" placeholder="1"
						title="SNo can't be empty"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				
				
				<div>
					<label for="staffId" class="label-size"></label>
					<div>
						<form:input type="hidden" path="staffId" class="text-box" placeholder="101"
						title="StaffId can't be empty"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<div>
					<label for="visitedDate" class="label-size">Visited Date</label>
					<div>
						<form:input type="Date" path="visitedDate" class="text-box" placeholder="07-09-200"/>
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
						<form:input path="dailyFees" class="text-box"
						title="DailyFees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<div>
					<form:button class="button">Update DoctorVisit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>