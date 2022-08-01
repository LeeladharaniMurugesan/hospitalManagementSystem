<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Doctor</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoc">
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roleType">Role Type</label>
					<div>
						<form:input path="roleType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="normalFees">Normal Fees</label>
					<div>
						<form:input path="normalFees" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>