<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Bed</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}

body {
	background-image:
		url(https://images.unsplash.com/photo-1564732005956-20420ebdab60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80);
}
</style>
<script>
<%@include file="/WEB-INF/script/staff.js"%>
</script>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>UPDATE BEDS</h1>
		<div id="form">
			<form:form name="form" action="updatebeds" method="post" modelAttribute="updatebed">
				<div>
					<label for="bedType" class="label-size">Bed Type </label>
					<div>
						<form:input path="bedType" class="text-box" placeholder="Standard"
							title="BedType can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" name="bedType"  onblur="bedTypeCheck();" />
					</div>
				</div>
				<form:errors path="bedType" class="text-danger" />
				<div>
					<label for="bedStatus" class="label-size">Bed Status</label>
					<div>
						<form:input path="bedStatus" class="text-box" placeholder="Booked"
							title="BedStatus can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" name="bedstatus" onblur="bedStatusCheck();" /> 
					</div>
				</div>
				<form:errors path="bedStatus" class="text-danger" />
				<div>
					<label for="bedSize" class="label-size">Bed Size</label>
					<div>
						<form:input path="bedSize" class="text-box" placeholder="Size"
							title="BedSize can't be empty" name="bedSize"
							pattern="^[a-zA-Z]+$" required="true" onblur="bedSizeCheck();"/>
					</div>
				</div>
				<form:errors path="bedSize" class="text-danger" />
				<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="roomId" class="text-box" name="roomId" onblur="roomIdCheck();" />
					</div>
				</div>
				<form:errors path="roomId" class="text-danger" />
				<div>
					<form:button class="button">Update Bed</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>