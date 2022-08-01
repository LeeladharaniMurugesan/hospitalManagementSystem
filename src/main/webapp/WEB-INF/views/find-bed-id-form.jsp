<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Ambulance</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbed">
					<div>
					<label for="bedId">Bed Id</label>
					<div>
						<form:input path="bedId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bedType">Bed Type </label>
					<div>
						<form:input path="bedType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bedStatus">Bed Status</label>
					<div>
						<form:input path="bedStatus" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bedSize">Bed Size</label>
					<div>
						<form:input path="bedSize" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomId">Room Id</label>
					<div>
						<form:input path="roomId" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>