<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff Booking Cancellation Detail</title>
<style><%@include file="/WEB-INF/css/style1.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://previews.123rf.com/images/giggsy25/giggsy251711/giggsy25171100134/89624948-smart-doctor-with-a-stethoscope-on-blurred-hospital-background-and-medical-icon-in-hexagonal-shaped-.jpg);
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>STAFFS LIST</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbookingcancellation">
				<div>
						<label for="staffId" class="label-size">Staff Id</label>
						<div>
							<form:input path="staffId"  class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="staffName" class="label-size">Staff Name</label>
						<div>
							<form:input path="staffName" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="dob" class="label-size">Dob</label>
						<div>
							<form:input path="dob" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="gender" class="label-size">Gender</label>
						<div>
							<form:input path="gender" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="phoneNo" class="label-size">PhoneNo</label>
						<div>
							<form:input path="phoneNo" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="emailId" class="label-size">EmailId</label>
						<div>
							<form:input path="emailId" class="text-box" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="designation" class="label-size">Designation</label>
						<div>
							<form:input path="designation" class="text-box" readonly="true"/>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	<h1>BOOKING LIST</h1>
	<div id="bookcancellist">
		<table border="2" width="100%" cellpadding="2">
			<colgroup>
				<col span="10" style="background-color: #C0C0C0">
				<col span="4" style="background-color: crimson">
			</colgroup>
			<thead>
				<tr>
					<th>BcId</th>
					<th>booking_date</th>
					<th>FromDate</th>
					<th>ToDate</th>
					<th>ResourceType</th>
					<th>Resource Id</th>
					<th>StaffId</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bc" items="${bookcancellist}">
					<tr>
						<td>${bc.bcId}</td>
						<td>${bc.bookingDate}</td>
						<td>${bc.fromDate}</td>
						<td>${bc.toDate}</td>
						<td>${bc.resourceType}</td>
						<td>${bc.resourceId}</td>
						<td>${bc.staffId}</td>
						<td>${bc.status}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>