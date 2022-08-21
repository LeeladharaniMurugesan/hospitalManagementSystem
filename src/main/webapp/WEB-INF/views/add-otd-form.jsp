<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add OperationTheatre</title>
<style><%@include file="/WEB-INF/css/style.css"%>
body {
	background-image:
		linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url(https://media.istockphoto.com/photos/urgent-surgery-professional-smart-intelligent-surgeons-standing-near-picture-id1306095133?b=1&k=20&m=1306095133&s=170667a&w=0&h=4LQ8xLSEn_cAAOVQvaMIgZypyBL8-FCqAEQQyC7ogBg=);
}
.label-text {
	font-size: 26px;
	color: white;
}
</style>
</head>
<body>
<button class="button-85" role="button" onclick="document.location='/operationTheatre/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1 class="label-text">ADD OPERATION THEATRE</h1>
		<div id="form">
			<form:form name="form" action="addoperationtheatre" method="post"
				modelAttribute="addoperationtheatre">
				<div>
					<label for="theatreType" class="label-size label-text">TheatreType</label>
					<div>
						<form:input path="theatreType" class="text-box"
							placeholder="TheatreType"
							title="TheatreType can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreType" class="text-danger" />
				<div>
					<label for="theatreLocation" class="label-size label-text">TheatreLocation</label>
					<div>
						<form:input path="theatreLocation" class="text-box"
							placeholder="TheatreLocation"
							title="TheatreLocation can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
					</div>
				</div>
				<form:errors path="theatreLocation" class="text-danger" />
				<div>
					<label for="theatreStatus" class="label-size label-text">TheatreStatus</label>
					<div>
						<form:input path="theatreStatus" class="text-box"
							placeholder="TheatreStatus"
							title="TheatreStatus can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
					</div>
				</div>
				<form:errors path="theatreStatus" class="text-danger" />
				<div>
					<form:button class="button">Add OT</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>
