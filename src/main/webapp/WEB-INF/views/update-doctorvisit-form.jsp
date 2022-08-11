<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update DoctorVisit</title>
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
				<form:errors path="staffId" class="text-danger" />
				<div>
					<label for="visitedDate">Visited Date</label>
					<div>
						<form:input path="visitedDate" />
					</div>
				</div>
				<form:errors path="visitedDate" class="text-danger" />
				<div>
					<label for="fromTime">From Time</label>
					<div>
						<form:input path="fromTime" />
					</div>
				</div>
				<form:errors path="fromTime" class="text-danger" />
				<div>
					<label for="toTime">To Time</label>
					<div>
						<form:input path="toTime" />
					</div>
				</div>
				<form:errors path="toTime" class="text-danger" />
				<div>
					<label for="dailyFees">Daily fees</label>
					<div>
						<form:input path="dailyFees" />
					</div>
				</div>
				<form:errors path="dailyFees" class="text-danger" />
				<div>
					<form:button>Update DoctorVisit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>