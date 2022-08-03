<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find BC details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbookcanceldetail">
					<div>
					<label for="bcId">Booking/Cancellation Id</label>
					<div>
						<form:input path="bcId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bookingDate">BookingDate </label>
					<div>
						<form:input path="bookingDate" readonly="true"/>
					</div>
				</div>
				
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="toDate">To Date</label>
					<div>
						<form:input path="toDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="resourceType">ResourceType</label>
					<div>
						<form:select path="resourceType">
                            <form:option value="Theatre">Theatre</form:option>
                            <form:option value="Ambulance">Ambulance</form:option>
                            <form:option value="Bed">Bed</form:option>
                        </form:select readonly="true"/>
					</div>
				</div>
				<div>
					<label for="resourceId">ResourceId</label>
					<div>
						<form:input path="resourceId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>