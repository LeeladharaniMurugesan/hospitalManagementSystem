<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add BookingCancellation</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addbc" method="post" modelAttribute="addbookcancel">
				<div>
					<label for="bcId">Booking/Cancellation Id</label>
					<div>
						<form:input path="bcId" />
					</div>
				</div>
				<div>
					<label for="bookingDate">BookingDate </label>
					<div>
						<form:input path="bookingDate" />
					</div>
				</div>
				
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" />
					</div>
				</div>
				<div>
					<label for="toDate">To Date</label>
					<div>
						<form:input path="toDate" />
					</div>
				</div>
				<div>
					<label for="resourceType">ResourceType</label>
					<div>
						<form:select path="resourceType">
                            <form:option value="Theatre">Theatre</form:option>
                            <form:option value="Ambulance">Ambulance</form:option>
                            <form:option value="Bed">Bed</form:option>
                        </form:select>
					</div>
				</div>
				<div>
					<label for="resourceId">ResourceId</label>
					<div>
						<form:input path="resourceId" />
					</div>
				</div>
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<form:button>Add Booking/Cancellation</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>