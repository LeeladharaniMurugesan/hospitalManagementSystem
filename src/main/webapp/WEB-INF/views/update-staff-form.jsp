<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
body {
	background-image:
		url(https://thumbs.dreamstime.com/z/healthcare-technology-doctor-using-digital-tablet-icon-medical-network-hospital-background-162019727.jpg);
}	
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>WELCOME STAFFS</h1>
	<div id="root">
		<div id="form">
			<form:form action="updatestaff" method="post" modelAttribute="updatestaffs">
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box"/>
					</div>
				</div>
				
				<div>
					<label for="staffName" class="label-size">Staff Name</label>
					<div>
						<form:input path="staffName" class="text-box" placeholder="staffName"
							title="StaffName can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="staffName" class="text-danger" />
				<div>
					<label for="dob" class="label-size">Dob</label>
					<div>
						<form:input path="dob" class="text-box"/>
					</div>
				</div>
				<form:errors path="dob" class="text-danger" />
				<div>
					<label for="gender" class="label-size">Gender</label>
					<div>
						<form:input path="gender" class="text-box"/>
					</div>
				</div>
				<form:errors path="gender" class="text-danger" />
				<div>
					<label for="phoneNo" class="label-size">PhoneNo</label>
					<div>
						<form:input path="phoneNo" class="text-box" placeholder="Phone Number"
								pattern="[1-9]{1}[0-9]{9}"
								title="Phone number should have atleast 10 digits"
								required="true" />
					</div>
				</div>
				<form:errors path="phoneNo" class="text-danger" />
				<div>
					<label for="emailId" class="label-size">EmailId</label>
					<div>
					<form:input path="emailId" class="text-box" placeholder="EmailId"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Enter valid email ex: example@gmail.com" required="true" />
					</div>
				</div>
				<form:errors path="emailId" class="text-danger" />
				<div>
					<label for="password" class="label-size">Password</label>
					<div>
						<form:input  type ="password" path="password" class="text-box" placeholder="Password"
							pattern="^[A-Za-z0-9._%+-]+$"
							title="Enter valid Password" required="true" />
					</div>
				</div>
				<form:errors path="password" class="text-danger" />
				<div>
					<label for="designation" class="label-size">Designation</label>
					<div>
						<form:input path="designation" class="text-box" placeholder="Designation"
							pattern="^[A-Za-z]\\w{3,20}$"
							title="Designation can't be empty or must contain only alphabets" required="true"/>
					</div>
				</div>
				<form:errors path="designation" class="text-danger" />
				<div>
					<form:button class="button">Update Staff</form:button>
				</div>
			</form:form>
		</div>
	</div>
	
</body>
</html>