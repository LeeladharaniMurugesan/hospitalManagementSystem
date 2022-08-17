<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update BC details</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://img.freepik.com/free-vector/doctors-notebook-medical-composition_1284-16378.jpg);
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>UPDATE BOOKING</h1>
	<div id="root">
		<div id="form">
			<form:form action="updatebcdetail" method="post"
				modelAttribute="updatebookcancel">
				<div>
					<label for="bcId" class="label-size">BookingId</label>
					<div>
						<form:input path="bcId" class="text-box"/>
					</div>
				</div>
				<div>
					<label for="bookingDate" class="label-size">BookingDate </label>
					<div>
						<form:input type="Date" path="bookingDate" class="text-box"
							placeholder="15-08-2022" title="BookingDate can't be empty" />
					</div>
				</div>
				<form:errors path="bookingDate" class="text-danger" />
				<div>
					<label for="fromDate" class="label-size">From Date</label>
					<div>
						<form:input type="Date" path="fromDate" class="text-box"
							placeholder="15-08-2022" title="FromDate can't be empty" />
					</div>
				</div>
				<form:errors path="fromDate" class="text-danger" />
				<div>
					<label for="toDate" class="label-size">To Date</label>
					<div>
						<form:input type="Date" path="toDate" class="text-box"
							placeholder="15-08-2022" title="ToDate can't be empty" />
					</div>
				</div>
				<form:errors path="toDate" class="text-danger" />
				<div>
					<label for="resourceType" class="label-size">ResourceType</label>
					<div>
						<form:select path="resourceType" class="text-box">
							<form:option value="Theatre">Theatre</form:option>
							<form:option value="Ambulance">Ambulance</form:option>
							<form:option value="Bed">Bed</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="resourceType" class="text-danger" />
				<div>
					<label for="resourceId" class="label-size">ResourceId</label>
					<div>
						<form:input path="resourceId" class="text-box" placeholder="101" />
					</div>
				</div>
				<form:errors path="resourceId" class="text-danger" />
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box" placeholder="111" />
					</div>
				</div>
				<form:errors path="staffId" class="text-danger" />
				<div>
					<label for="status" class="label-size">Status</label>
					<div>
						<form:input path="status" class="text-box" placeholder="Booked" />
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<form:button class="button">Update Booking</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>