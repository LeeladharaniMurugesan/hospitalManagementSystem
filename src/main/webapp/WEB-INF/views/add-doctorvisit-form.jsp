<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add DoctorVisit</title>
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
			<form:form action="adddocvisitdetail" method="post" modelAttribute="adddocvisit">
				<div>
					<label for="staffId">StaffId </label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="visitedDate">Visited Date</label>
					<div>
						<form:input type="Date" path="visitedDate" />
					</div>
				</div>
				<form:errors path="visitedDate" class="text-danger" />
				<div>
					<label for="fromTime">From Time</label>
					<div>
						<form:input path="fromTime"/>
					</div>
				</div>
				<form:errors path="fromTime" class="text-danger" />
				<div>
					<label for="toTime">To Time</label>
					<div>
						<form:input path="toTime"/>
					</div>
				</div>
				<form:errors path="toTime" class="text-danger" />
				<div>
					<label for="dailyFees">DailyFees</label>
					<div>
						<form:input path="dailyFees" />
					</div>
				</div>
				<div>
					<form:button>Add DoctorVisit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>