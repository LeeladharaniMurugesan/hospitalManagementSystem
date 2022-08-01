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
			<form:form action="" method="post" modelAttribute="getambulance">
					<div>
					<label for="registerId">RegisterId</label>
					<div>
						<form:input path="registerId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="purchaseDate">PurchaseDate </label>
					<div>
						<form:input path="purchaseDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ambulanceModel">AmbulanceModel</label>
					<div>
						<form:input path="ambulanceModel" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="staffId">Staff id</label>
					<div>
						<form:input path="staffId" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>