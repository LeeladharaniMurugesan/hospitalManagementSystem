<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add BookingCancellation</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://img.freepik.com/free-vector/doctors-notebook-medical-composition_1284-16378.jpg);
}
</style>
</head>
<body>
	<button class="button-85" role="button" onclick="document.location='/bcdetail/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>ADD BOOKING</h1>
	<div id="root">
		<div id="form">
			<form:form action="addbc" method="post" modelAttribute="addbookcancel">
				<div>
					<label for="bookingDate" class="label-size">BookingDate </label>
					<div>
						<form:input  type="Date" path="bookingDate" class="text-box" placeholder="15-08-2022"
						title="BookingDate can't be empty" required="true"/>
					</div>
				</div>
				<form:errors path="bookingDate" class="text-danger" />
				<div>
					<label for="fromDate" class="label-size">From Date</label>
					<div>
						<form:input  type="Date" path="fromDate" class="text-box" placeholder="15-08-2022"
						title="FromDate can't be empty" required="true"/>
					</div>
				</div>
				<form:errors path="fromDate" class="text-danger" />
				<div>
					<label for="toDate" class="label-size">To Date</label>
					<div>
						<form:input  type="Date" path="toDate" class="text-box" placeholder="15-08-2022"
						title="ToDate can't be empty" required="true"/>
					</div>
				</div>
				<form:errors path="toDate" class="text-danger" />
				<div>
					<label for="resourceType" class="label-size">ResourceType</label>
					<div>
						<form:select path="resourceType" class="text-box">
                            <form:option value="Theatre">Theatre</form:option>
                            <form:option value="Bed">Bed</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="resourceType" class="text-danger" />
				<div>
					<label for="resourceId" class="label-size">ResourceId</label>
					<div>
						<form:input path="resourceId" class="text-box" placeholder="101"
						title="ResourceId can't be empty and should contains only integer"
						 required="true"/>
					</div>
				</div>
				<form:errors path="resourceId" class="text-danger" />
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:select type="hidden" path="staffId" placeholder="Staff Id" class="text-box">
				<c:forEach var="allStaff" items="${getallstaff}">
                                <form:option value="${allStaff.staffId}"
							label="${allStaff.staffId}" />
                 </c:forEach>
                        </form:select>	
					</div>
				</div>
				<form:errors path="staffId" class="text-danger" />
				<div>
					<label for="status" class="label-size">Status</label>
					<div>
						<form:select path="status" class="text-box">
                            <form:option value="Booked">Booked</form:option>
                            <form:option value="Cancelled">Cancelled</form:option>
                            <form:option value="Available">Available</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<form:button class="button">Add Booking</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>