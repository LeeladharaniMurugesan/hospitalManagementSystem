<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update BC details</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatebcdetail" method="post"
				modelAttribute="updatebookcancel">
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
				<form:errors path="bookingDate" class="text-danger" />
				<div>
					<label for="fromDate">From Date</label>
					<div>
						<form:input path="fromDate" />
					</div>
				</div>
				<form:errors path="fromDate" class="text-danger" />
				<div>
					<label for="toDate">To Date</label>
					<div>
						<form:input path="toDate" />
					</div>
				</div>
				<form:errors path="toDate" class="text-danger" />
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
				<form:errors path="resourceType" class="text-danger" />
				<div>
					<label for="resourceId">ResourceId</label>
					<div>
						<form:input path="resourceId" />
					</div>
				</div>
				<form:errors path="resourceId" class="text-danger" />
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<form:errors path="staffId" class="text-danger" />
				<div>
					<form:button>Update Booking/Cancellation</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>