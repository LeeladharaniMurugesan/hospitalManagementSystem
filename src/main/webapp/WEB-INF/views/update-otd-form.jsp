<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update OperationTheatre</title>
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
	url(https://c1.wallpaperflare.com/preview/143/434/371/stethoscope-doctor-medical-blood-pressure.jpg);
}
.label-text {
	font-size: 26px;
	color: wheat;
}
</style>
</head>
<body>
	<h1 class="label-text">UPDATE OPERATION THEATRE</h1>
	<div id="root">
		<div id="form">
			<form:form action="updateopeartiontheatre" method="post" modelAttribute="updateoperationtheatres">
				<div>
					<label for="theatreId" class="label-size label-text">TheatreId</label>
					<div>
						<form:input path="theatreId" class="text-box" placeholder="theatreId"/>
					</div>
				</div>
				<div>
					<label for="theatreType" class="label-size label-text">TheatreType</label>
					<div>
						<form:input path="theatreType" class="text-box" placeholder="theatreType"
							title="TheatreType can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreType" class="text-danger" />
				<div>
					<label for="theatreLocation" class="label-size label-text">TheatreLocation</label>
					<div>
						<form:input path="theatreLocation" class="text-box" placeholder="theatreLocation"
							title="TheatreLocation can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreLocation" class="text-danger" />
				<div>
					<label for="theatreStatus" class="label-size label-text">TheatreStatus</label>
					<div>
						<form:input path="theatreStatus" class="text-box" placeholder="theatreStatus"
							title="TheatreStatus can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreStatus" class="text-danger" />
				<div>
					<form:button class="button">Update OT</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>