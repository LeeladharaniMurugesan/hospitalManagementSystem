<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Ambulance</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://img.freepik.com/free-vector/emergency-ambulance-with-coronavirus-concept_23-2148534628.jpg?w=740&t=st=1660554389~exp=1660554989~hmac=a365ae79d089f5d9e439a2246bf5c307cc7a7a7c2197dda7b24f160e35b926b8)
}
.label-text {
	font-size: 26px;
	color: white;
}
</style>
</head>
<body>
		<button onclick="document.location='/ambulance/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1 class="label-text">ADD AMBULANCES</h1>
	<div id="root">
		<div id="form">
			<form:form action="addambulances" method="post" modelAttribute="addambulance">
				<div>
					<label for="registerId" class="label-size label-text">Register Id</label>
					<div>
						<form:input path="registerId" class="text-box"
						title="RegisterId can't be empty" placeholder="TN 12 BS 1344"
						pattern="^[A-Z]{2}\s[0-9]{2}\s[A-Z]{1,2}\s[0-9]{4}$"
						 required="true"/>
					</div>
				</div>
				<div>
					<label for="purchaseDate" class="label-size label-text">Purchase Date </label>
					<div>
						<form:input type="Date" path="purchaseDate" class="text-box" />
					</div>
				</div>
				<div>
					<label for="ambulanceModel"class="label-size label-text">Ambulance Model</label>
					<div>
						<form:input path="ambulanceModel" class="text-box"
						placeholder="AmbulaceModel"
							title="AmbulanceModel can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="ambulanceModel" class="text-danger" />
				<div>
					<label for="status" class="label-size label-text">Status</label>
					<div>
						<form:input path="status" class="text-box"
						placeholder="Status"
							title="status can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<label for="staffId" class="label-size label-text">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box" placeholder="101"
						title="StaffId can't be empty and should contains only integer"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<div>
					<form:button class="button">Add ambulance</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>