<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Doctor</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}
body {
	background-image:
		url(https://st.depositphotos.com/1594308/1372/i/450/depositphotos_13724305-stock-photo-stethoscope-on-clipboard.jpg);
}
</style>
</head>
<body>
<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>UPDATE DOCTORS</h1>
	<div id="root">
		<div id="form">
			<form:form action="updatedoctor" method="post" modelAttribute="updatedoc">
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box"
							placeholder="staffId"
							title="StaffId can't be empty "/>
					</div>
				</div>
				<div>
					<label for="speciality" class="label-size">Speciality </label>
					<div>
						<form:input path="speciality" class="text-box"
						placeholder="speciality"
							title="Speciality can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="speciality" class="text-danger" />
				<div>
					<label for="roleType" class="label-size">Role Type</label>
					<div>
						<form:input path="roleType" class="text-box"
						placeholder="roleType"
							title="RoleType can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="roleType" class="text-danger" />
				<div>
					<label for="normalFees" class="label-size">Normal Fees</label>
					<div>
						<form:input path="normalFees" class="text-box"/>
					</div>
				</div>
				<form:errors path="normalFees" class="text-danger" />
				<div>
					<form:button class="button">Update Doctor</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>