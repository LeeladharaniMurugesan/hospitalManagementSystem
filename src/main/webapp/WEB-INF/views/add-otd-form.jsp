<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add OperationTheatre</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addoperationtheatre" method="post" modelAttribute="addoperationtheatre">
				<div>
					<label for="theatreId">Theatre Id</label>
					<div>
						<form:input path="theatreId" />
					</div>
				</div>
				<div>
					<label for="theatreType">Theatre Type</label>
					<div>
						<form:input path="theatreType" />
					</div>
				</div>
				<div>
					<label for="theatreLocation">Theatre Location</label>
					<div>
						<form:input path="theatreLocation" />
					</div>
				</div>
				<div>
					<label for="theatreStatus">Theatre Status</label>
					<div>
						<form:input path="theatreStatus" />
					</div>
				</div>
				<div>
					<form:button>Add OpeartionTheatre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>