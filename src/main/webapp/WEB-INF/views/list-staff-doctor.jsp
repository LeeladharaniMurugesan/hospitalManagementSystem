<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Doctor Detail</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addstaff" method="post" modelAttribute="getstaff">
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
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Staff Id</th>
					<th>Speciality</th>
					<th>Role Type</th>
					<th>Normal Fees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doc" items="${doclist}">
					<tr>
						<td>${doc.staffId}</td>
						<td>${doc.speciality}</td>
						<td>${doc.roleType}</td>
						<td>${doc.normalFees}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>