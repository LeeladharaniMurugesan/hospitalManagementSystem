<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bed</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addbed" method="post" modelAttribute="addbeds">
				<div>
					<label for="bedType">Bed Type </label>
					<div>
						<form:input path="bedType" />
					</div>
				</div>
				<form:errors path="bedType" class="text-danger" />
				<div>
					<label for="bedStatus">Bed Status</label>
					<div>
						<form:input path="bedStatus" />
					</div>
				</div>
				<form:errors path="bedStatus" class="text-danger" />
				<div>
					<label for="bedSize">Bed Size</label>
					<div>
						<form:input path="bedSize" />
					</div>
				</div>
				<form:errors path="bedSize" class="text-danger" />
				<div>
					<label for="roomId">Room Id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<form:errors path="roomId" class="text-danger" />
				<div>
					<form:button>Add Bed</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>