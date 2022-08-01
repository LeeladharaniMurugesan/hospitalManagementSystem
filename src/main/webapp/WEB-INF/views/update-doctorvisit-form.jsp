<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update DoctorVisit</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatedoctorvisit" method="post" modelAttribute="updatedocvisit">
				<div>
					<label for="sNo">S no</label>
					<div>
						<form:input path="sNo" />
					</div>
				</div>
				<div>
					<label for="staffId">Staff id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="visitedDate">Visited Date</label>
					<div>
						<form:input path="visitedDate" />
					</div>
				</div>
				<div>
					<label for="fromTime">From Time</label>
					<div>
						<form:input path="fromTime" />
					</div>
				</div>
				<div>
					<label for="toTime">To Time</label>
					<div>
						<form:input path="toTime" />
					</div>
				</div>
				<div>
					<label for="dailyFees">Daily fees</label>
					<div>
						<form:input path="dailyFees" />
					</div>
				</div>
				<div>
					<form:button>Update DoctorVisit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>