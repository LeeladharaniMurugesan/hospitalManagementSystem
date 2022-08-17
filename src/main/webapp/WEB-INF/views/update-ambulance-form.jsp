<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Ambulance</title>
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
	url(https://img.freepik.com/premium-vector/ambulance-icon_28461-140.jpg?size=626&ext=jpg&ga=GA1.2.761107559.1660373804)
}
.label-text {
	font-size: 26px;
	color: white;
}
<script>
<%@include file="/WEB-INF/script/staff.js"%>	
</script>
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>UPDATE AMBULANCES</h1>
	<div id="root">
		<div id="form">
			<form:form action="updateambulance" method="post"
				modelAttribute="updateamb">
				<div>
					<label for="registerId" class="label-size label-text">Register Id</label>
					<div>
						<form:input path="registerId" class="text-box"
						title="RegisterId can't be empty" name="registerId"
						pattern="^[A-Z]{2}\s[0-9]{2}\s[A-Z]{1,2}\s[0-9]{4}$"
						 required="true" onblur="registerIdCheck();"/>
					</div>
				</div>
				<div>
					<label for="purchaseDate" class="label-size">Purchase Date </label>
					<div>
						<form:input type="Date" path="purchaseDate" class="text-box" name="purchaseDate" onblur="purchaseDateCheck();" />
					</div>
				</div>
				<div>
					<label for="ambulanceModel"class="label-size">Ambulance Model</label>
					<div>
						<form:input path="ambulanceModel" class="text-box"
						placeholder="ambulaceModel" name="ambulancemodel"
							title="AmbulanceModel can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true" onblur="ambulanceModelCheck();"/>
					</div>
				</div>
				<form:errors path="ambulanceModel" class="text-danger" />
				<div>
					<label for="status" class="label-size">Status</label>
					<div>
						<form:input path="status" class="text-box"
						placeholder="status" name="status"
							title="status can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" onblur="statusCheck();"/>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box" name="staffId"
						title="StaffId can't be empty and should contains only numbers "/>
					</div>
				</div>
				<div>
					<form:button class="button">Update ambulance</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>