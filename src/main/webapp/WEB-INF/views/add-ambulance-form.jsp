<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Ambulance</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addambulance" method="post" modelAttribute="addAmbulance">
				<div>
					<label for="registerId">Register Id</label>
					<div>
						<form:input path="registerId" />
					</div>
				</div>
				<div>
					<label for="purchaseDate">Purchase Date </label>
					<div>
						<form:input path="purchaseDate" />
					</div>
				</div>
				<div>
					<label for="ambulanceModel">Ambulance Model</label>
					<div>
						<form:input path="ambulanceModel" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<form:button>Add ambulance</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>