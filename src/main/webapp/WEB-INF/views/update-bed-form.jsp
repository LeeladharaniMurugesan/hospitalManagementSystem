<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Bed</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatebeds" method="post" modelAttribute="updatebed">
					<div>
					<label for="bedId">Bed Id</label>
					<div>
						<form:input path="bedId" />
					</div>
				</div>
				<div>
					<label for="bedType">Bed Type </label>
					<div>
						<form:input path="bedType" />
					</div>
				</div>
				<div>
					<label for="bedStatus">Bed Status</label>
					<div>
						<form:input path="bedStatus" />
					</div>
				</div>
				<div>
					<label for="bedSize">Bed Size</label>
					<div>
						<form:input path="bedSize" />
					</div>
				</div>
				<div>
					<label for="roomId">Room Id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<form:button>Update Bed</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>