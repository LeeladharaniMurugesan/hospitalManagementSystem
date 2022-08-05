<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Ambulance Detail</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action=" " method="post" modelAttribute="getambulance">
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
	<div id="ambulancelist">
		<table border=2>
			<thead>
				<tr>
					<th>registerId</th>
					<th>purchaseDate</th>
					<th>ambulanceModel</th>
					<th>status</th>
					<th>staffId</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="amb" items="${ambulancelist}">
					<tr>
						<td>${amb.registerId}</td>
						<td>${amb.purchaseDate}</td>
						<td>${amb.ambulanceModel}</td>
						<td>${amb.status}</td>
						<td>${amb.staffId}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>