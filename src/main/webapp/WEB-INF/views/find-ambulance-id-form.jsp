<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Ambulance</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
	linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
	url(https://images.unsplash.com/photo-1554734867-bf3c00a49371?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YW1idWxhbmNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80)
	}
.label-text {
	font-size: 26px;
	color: white;
}
</style>
</head>
<body>
	<button  class="button-85" role="button" onclick="document.location='/ambulance/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>FIND AMBULANCES</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getambulance">
					<div>
					<label for="ambulanceId" class="label-size label-text"></label>
					<div>
						<form:input type="hidden" path="ambulanceId" class="text-box" readonly="true"/>
					</div>
				</div>
					<div>
					<label for="registerNo" class="label-size label-text"></label>
					<div>
						<form:input type="hidden" path="registerNo" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="purchaseDate" class="label-size label-text">PurchaseDate </label>
					<div>
						<form:input path="purchaseDate" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ambulanceTime" class="label-size label-text">AmbulanceTime </label>
					<div>
						<form:input path="ambulanceTime" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ambulanceModel" class="label-size label-text">AmbulanceModel</label>
					<div>
						<form:input path="ambulanceModel" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="status" class="label-size label-text">Status</label>
					<div>
						<form:input path="status" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ambulanceStatus" class="label-size label-text">Ambulance Status</label>
					<div>
						<form:input path="ambulanceStatus" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staffId" class="label-size label-text"></label>
					<div>
						<form:input type="hidden" path="staffId" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>