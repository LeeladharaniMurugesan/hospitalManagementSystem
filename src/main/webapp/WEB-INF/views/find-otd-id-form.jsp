<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find OperationTheatre</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getOperationTheatre">
				<div>
					<label for="theatreId">Theatre Id</label>
					<div>
						<form:input path="theatreId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="theareType">Theatre Type</label>
					<div>
						<form:input path="theatreType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="theatreLocation">Theatre Location</label>
					<div>
						<form:input path="theatreLocation" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="theatreStatus">Theatre Status</label>
					<div>
						<form:input path="theatreStatus" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>