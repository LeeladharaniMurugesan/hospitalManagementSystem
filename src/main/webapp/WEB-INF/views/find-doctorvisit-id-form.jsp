<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find DoctorVisit</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdocvisit">
			<div>
					<label for="s_no">S_no</label>
					<div>
						<form:input path="s_no" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staff_id">Staff Id</label>
					<div>
						<form:input path="staff_id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="visited_date">Visited Date</label>
					<div>
						<form:input path="visited_date" readonly="true" />
					</div>
				</div>
				<div>
					<label for="from_time">From Time</label>
					<div>
						<form:input path="from_time" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dailyfees">Daily Fees</label>
					<div>
						<form:input path="dailyfees" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>