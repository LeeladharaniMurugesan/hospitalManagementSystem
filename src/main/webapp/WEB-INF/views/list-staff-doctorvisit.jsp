<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff DoctorVisit Detail</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstaffdoc">
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="staffName">Staff Name</label>
					<div>
						<form:input path="staffName" />
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="emailId">EmailId</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="designation" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="doctorlist">
		<table border=2>
			<thead>
				<tr>
					<th>SNo</th>
					<th>StaffId</th>
					<th>VisitedDate</th>
					<th>FromTime</th>
					<th>ToTime</th>
					<th>DailyFees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docv" items="${doctorlist}">
					<tr>
						<td>${docv.sNo}</td>
						<td>${docv.staffId}</td>
						<td>${docv.visitedDate}</td>
						<td>${docv.fromTime}</td>
						<td>${docv.toTime}</td>
						<td>${docv.dailyFees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>