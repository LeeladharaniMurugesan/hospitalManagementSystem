<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find OperationTheatre</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}

body {
	background-image:
		linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url(https://c1.wallpaperflare.com/preview/198/427/746/blood-pressure-pressure-gauge-medical-the-test.jpg);
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>VIEW OPERATION THEATRE</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getoperationtheatres">
				<div>
					<label for="theatreId" class="label-size">TheatreId</label>
					<div>
						<form:input path="theatreId" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="theareType" class="label-size">TheatreType</label>
					<div>
						<form:input path="theatreType" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="theatreLocation" class="label-size">TheatreLocation</label>
					<div>
						<form:input path="theatreLocation" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="theatreStatus" class="label-size">TheatreStatus</label>
					<div>
						<form:input path="theatreStatus" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>