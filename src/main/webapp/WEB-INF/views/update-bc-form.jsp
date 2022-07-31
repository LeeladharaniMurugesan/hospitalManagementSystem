<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update BC details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatebcdetail" method="post"
				modelAttribute="updatebc">
				<div>
					<label for="bc_id">Booking and Cancellation Id</label>
					<div>
						<form:input path="bc_id" />
					</div>
				</div>
				<div>
					<label for="bc_type">BC Type </label>
					<div>
						<form:input path="bc_type" />
					</div>
				</div>
				<div>
					<label for="resource_id">Resource</label>
					<div>
						<form:input path="resource_id" />
					</div>
				</div>
				<div>
					<label for="booking_date">Booking Date</label>
					<div>
						<form:input path="booking_date" />
					</div>
				</div>
				<div>
					<label for="fromdate">From Date</label>
					<div>
						<form:input path="fromdate" />
					</div>
				</div>
				<div>
					<label for="todate">To Date</label>
					<div>
						<form:input path="todate" />
					</div>
				</div>
				<div>
					<label for="staff_id">Staff id</label>
					<div>
						<form:input path="staff_id" />
					</div>
				</div>
				
				<div>
					<form:button>Update Booking and Cancellation</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>