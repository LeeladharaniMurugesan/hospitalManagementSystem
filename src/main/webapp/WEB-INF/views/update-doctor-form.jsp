<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Doctor</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://st.depositphotos.com/1594308/1372/i/450/depositphotos_13724305-stock-photo-stethoscope-on-clipboard.jpg);
}
</style>
</head>
<body>
	<button  class="button-85" role="button" onclick="document.location='/doctor/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>UPDATE DOCTORS</h1>
	<div id="root">
		<div id="form">
			<form:form  name="form" action="updatedoctor" method="post" modelAttribute="updatedoc">
				<div>
					<label for="staffId" class="label-size">StaffId </label>
					<div>
						<form:input path="staffId" class="text-box" placeholder="101"
						title="StaffId can't be empty" name="staffId" required="true"/>
					</div>
				</div>
				<div>
					<label for="speciality" class="label-size">Speciality </label>
					<div>
						<form:input path="speciality" class="text-box"
						placeholder="speciality"
							title="Speciality can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="speciality" class="text-danger" />
				<div>
					<label for="roleType" class="label-size">Role Type</label>
					<div>
						<form:input path="roleType" class="text-box"
						placeholder="roleType"
							title="RoleType can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
					</div>
				</div>
				<form:errors path="roleType" class="text-danger" />
				<div>
					<label for="normalFees" class="label-size">Normal Fees</label>
					<div>
						<form:input path="normalFees" class="text-box"
						placeholder="normalFees"
						title="NormalFees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="normalFees" class="text-danger" />
				<div>
					<form:button class="button"> Update Doctor</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>