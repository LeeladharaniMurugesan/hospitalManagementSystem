<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Beds</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://twin-cities.umn.edu/sites/twin-cities.umn.edu/files/styles/desktop/public/media/Interior-of-new-empty-hospital-room..jpg?itok=_1-yYNvx);
}
</style>
</head>
<body>
		<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<h1>FIND BEDS</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbed">
					<div>
					<label for="bedId" class="label-size">Bed Id</label>
					<div>
						<form:input path="bedId" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bedType" class="label-size">Bed Type </label>
					<div>
						<form:input path="bedType" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bedStatus" class="label-size">Bed Status</label>
					<div>
						<form:input path="bedStatus" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bedSize" class="label-size">Bed Size</label>
					<div>
						<form:input path="bedSize" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="roomId" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>