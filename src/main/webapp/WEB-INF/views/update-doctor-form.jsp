<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Doctor</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatedoctor" method="post" modelAttribute="updatedoc">
				<div>
					<label for="staffId">Staff id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" />
					</div>
				</div>
				<div>
					<label for="roleType">Role Type</label>
					<div>
						<form:input path="roleType" />
					</div>
				</div>
				<div>
					<label for="normalFees">Normal fees</label>
					<div>
						<form:input path="normalFees" />
					</div>
				</div>
				<div>
					<form:button>Update Doctor</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>