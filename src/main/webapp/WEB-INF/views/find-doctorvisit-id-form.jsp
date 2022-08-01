<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find DoctorVisit</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoctorvisit">
			<div>
					<label for="sNo">SNo</label>
					<div>
						<form:input path="sNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="visitedDate">Visited Date</label>
					<div>
						<form:input path="visitedDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="fromTime">From Time</label>
					<div>
						<form:input path="fromTime" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="toTime">To Time</label>
					<div>
						<form:input path="toTime" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dailyFees">Daily Fees</label>
					<div>
						<form:input path="dailyFees" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>