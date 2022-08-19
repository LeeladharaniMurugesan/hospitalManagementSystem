<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find BC details</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}

body {
	background-image:
		url(https://img.freepik.com/free-vector/doctors-notebook-medical-composition_1284-16378.jpg);
}
</style>
</head>
<body>
	<button onclick="document.location='/bcdetail/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>FIND BOOKING DETAILS</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="getbookcanceldetail">
				<div>
					<label for="bcId" class="label-size">BookingId</label>
					<div>
						<form:input path="bcId" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bookingDate" class="label-size">BookingDate </label>
					<div>
						<form:input path="bookingDate" class="text-box" readonly="true" />
					</div>
				</div>

				<div>
					<label for="fromDate" class="label-size">From Date</label>
					<div>
						<form:input path="fromDate" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="toDate" class="label-size">To Date</label>
					<div>
						<form:input path="toDate" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="resourceType" class="label-size">ResourceType</label>
					<form:input path="resourceType" class="text-box" readonly="true" />
				</div>
				<div>
					<label for="resourceId" class="label-size">ResourceId</label>
					<div>
						<form:input path="resourceId" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="status" class="label-size">Staff Id</label>
					<div>
						<form:input path="status" class="text-box" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>