<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Ambulance</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}
body {
	background-image:
		linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url(https://img.freepik.com/free-vector/emergency-ambulance-with-coronavirus-concept_23-2148534628.jpg?w=740&t=st=1660554389~exp=1660554989~hmac=a365ae79d089f5d9e439a2246bf5c307cc7a7a7c2197dda7b24f160e35b926b8)
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1 class="label-text">ADD AMBULANCES</h1>
	<div id="root">
		<div id="form">
			<form:form action="addambulances" method="post" modelAttribute="addambulance">
				<div>
					<label for="registerId" class="label-size label-text">Register Id</label>
					<div>
						<form:input path="registerId" class="text-box"
						title="RegisterId can't be empty" required="true"/>
					</div>
				</div>
				<div>
					<label for="purchaseDate" class="label-size">Purchase Date </label>
					<div>
						<form:input type="Date" path="purchaseDate" class="text-box" />
					</div>
				</div>
				<div>
					<label for="ambulanceModel"class="label-size">Ambulance Model</label>
					<div>
						<form:input path="ambulanceModel" class="text-box"
						placeholder="ambulaceModel"
							title="AmbulanceModel can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="ambulanceModel" class="text-danger" />
				<div>
					<label for="status" class="label-size">Status</label>
					<div>
						<form:input path="status" class="text-box"
						placeholder="status"
							title="status can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box"
						title="StaffId can't be empty"/>
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