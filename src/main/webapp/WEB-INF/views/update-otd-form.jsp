<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update OperationTheatre</title>
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
			<form:form action="updateopeartiontheatre" method="post" modelAttribute="updateoperationtheatres">
				<div>
					<label for="theatreId">Theatre id</label>
					<div>
						<form:input path="theatreId" />
					</div>
				</div>
				<div>
					<label for="theatreType" class="label-size">Theatre Type</label>
					<div>
						<form:input path="theatreType" class="text-box" placeholder="theatreType"
							title="TheatreType can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreType" class="text-danger" />
				<div>
					<label for="theatreLocation" class="label-size">Theatre Location</label>
					<div>
						<form:input path="theatreLocation" class="text-box" placeholder="theatreLocation"
							title="TheatreLocation can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreLocation" class="text-danger" />
				<div>
					<label for="theatreStatus" class="label-size">Theatre Status</label>
					<div>
						<form:input path="theatreStatus" class="text-box" placeholder="theatreStatus"
							title="TheatreStatus can't be empty or must contain only alphabets"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="theatreStatus" class="text-danger" />
				<div>
					<form:button class="button">Update OpeartionTheatre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>