<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Doctor</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://st.depositphotos.com/1594308/1372/i/450/depositphotos_13724305-stock-photo-stethoscope-on-clipboard.jpg);
}
</style>
</head>
<body>
		<button class="button-85" role="button" onclick="document.location='/doctor/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>ADD DOCTORS</h1>
	<div id="root">
		<div id="form">
			<form:form action="adddoctor" method="post" modelAttribute="adddoc">
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<form:select path="staffId" placeholder="Staff Id" class="text-box">

                            <c:forEach var="allDoctor" items="${allstaff}">
                                <form:option value="${allDoctor.staffId}"
							label="${allDoctor.staffId}" />
                            </c:forEach>
                        </form:select>	
				</div>
				<div>
					<label for="speciality" class="label-size">Speciality </label>
					<div>
						<form:select path="speciality" class="text-box">
                            <form:option value="Cardiologist">Cardiologist</form:option>
                            <form:option value="Pediatrics">Pediatrics</form:option>
                            <form:option value="Internists">Internists</form:option>
                            <form:option value="Dermatologists">Dermatologists</form:option>
                            <form:option value="Causality">Causality</form:option>
                            <form:option value="Neurologist">Neurologist</form:option>
                            <form:option value="Pharmacist">Pharmacist</form:option>
                            <form:option value="Dietician">Dietician</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="speciality" class="text-danger" />
				<div>
					<label for="roleType" class="label-size">Role Type</label>
					<div>
						<form:select path="speciality" class="text-box">
                            <form:option value="Permanent">Permanent</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="roleType" class="text-danger" />
				<div>
					<label for="normalFees" class="label-size">Normal Fees</label>
					<div>
						<form:input path="normalFees" class="text-box"
						placeholder="NormalFees"
						title="NormalFees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<form:errors path="normalFees" class="text-danger" />
				<div>
					<form:button class="button">Add New Doctor</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>