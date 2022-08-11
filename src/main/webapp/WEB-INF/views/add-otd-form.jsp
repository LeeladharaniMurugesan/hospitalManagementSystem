<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add OperationTheatre</title>
<style type="text/css">
body {
	background-image:
		url(https://st2.depositphotos.com/2065849/9678/i/950/depositphotos_96789564-stock-photo-medical-drip-in-hospital-corridor.jpg);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

table, th, td {table , th, td { border:1pxsolidblack;
	border-collapse: collapse;
}

}
th {
	background-color: #04AA6D;
	color: white;
}

td {
	backgoung-colour: #c4f5dc;
}

.label-size {
	font-size: 28px;
}

.text-box {
	height: 28px;
	width: 237px;
}

.button {
	margin-top: 10px;
	width: 160px;
	height: 38px;
	font-size: 15px;
	background-color: deepskyblue;
	border: 2px solid blue;
	border-radius: 5px;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
<h1>
		<center>ADD OPERATION THEATRE</center>
	</h1>

	<center>
	<div id="root">
		<div id="form">
			<form:form action="addoperationtheatre" method="post" modelAttribute="addoperationtheatre">
				<div>
					<label for="theatreType" class="label-size">Theatre Type</label>
					<div>
						<form:input path="theatreType" class="text-box" placeholder="theatreType"/>
					</div>
				</div>
				<form:errors path="theatreType" class="text-danger" />
				<div>
					<label for="theatreLocation" class="label-size">Theatre Location</label>
					<div>
						<form:input path="theatreLocation" class="text-box" placeholder="theatreLocation"/>
					</div>
				</div>
				<form:errors path="theatreLocation" class="text-danger" />
				<div>
					<label for="theatreStatus" class="label-size">Theatre Status</label>
					<div>
						<form:input path="theatreStatus" class="text-box" placeholder="theatreStatus" />
					</div>
				</div>
				<form:errors path="theatreStatus" class="text-danger" />
				<div>
					<form:button class="button">Add OpeartionTheatre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>