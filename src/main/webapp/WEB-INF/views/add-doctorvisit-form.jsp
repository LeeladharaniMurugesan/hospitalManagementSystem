<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add DoctorVisit</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="adddocvisit">
				<div>
					<label for="s_no">S_no</label>
					<div>
						<form:input path="s_no" />
					</div>
				</div>
				<div>
					<label for="staff_id">Staff_id </label>
					<div>
						<form:input path="staff_id" />
					</div>
				</div>
				<div>
					<label for="visited_date">Visited Date</label>
					<div>
						<form:input path="visited_date" />
					</div>
				</div>
				<div>
					<label for="from_time">From Time</label>
					<div>
						<form:input path="from_time" />
					</div>
				</div>
				<div>
					<label for="to_time">From Time</label>
					<div>
						<form:input path="to_time" />
					</div>
				</div>
				<div>
					<label for="dailyfees">DailyFees</label>
					<div>
						<form:input path="dailyfees" />
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