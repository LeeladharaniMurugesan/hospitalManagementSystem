<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff DoctorVisit Detail</title>
<style><%@include file ="/WEB-INF/css/style1.css"%>h1 {
	text-align: center;
}

div {
	text-align: center;
}
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
body {
	background-image:
		url(https://previews.123rf.com/images/giggsy25/giggsy251711/giggsy25171100134/89624948-smart-doctor-with-a-stethoscope-on-blurred-hospital-background-and-medical-icon-in-hexagonal-shaped-.jpg);
}
</style>
</head>
<body>
<button class="button-85" role="button" onclick="document.location='/doctorvisit/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>STAFF LIST</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstaffdoc">
				<div>
					<label for="staffId" class="label-size"></label>
					<div>
						<form:input type="hidden" path="staffId" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffName" class="label-size">Staff Name</label>
					<div>
						<form:input path="staffName" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dob" class="label-size">Dob</label>
					<div>
						<form:input path="dob" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender" class="label-size">Gender</label>
					<div>
						<form:input path="gender" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNo" class="label-size">PhoneNo</label>
					<div>
						<form:input path="phoneNo" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="emailId" class="label-size">EmailId</label>
					<div>
						<form:input path="emailId" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="designation" class="label-size">Designation</label>
					<div>
						<form:input path="designation" class="text-box" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<h1>VISITING DOCTORLIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="10" style="background-color: Magenta">
				<col span="4" style="background-color: crimson">
			</colgroup>
			<thead>
				<tr>
					<th>VisitedDate</th>
					<th>FromTime</th>
					<th>ToTime</th>
					<th>DailyFees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docv" items="${doctorlist}">
					<tr>
						<td>${docv.visitedDate}</td>
						<td>${docv.fromTime}</td>
						<td>${docv.toTime}</td>
						<td>${docv.dailyFees}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>