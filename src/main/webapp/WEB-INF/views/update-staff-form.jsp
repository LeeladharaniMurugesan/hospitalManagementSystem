<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<style><%@include file="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://thumbs.dreamstime.com/z/healthcare-technology-doctor-using-digital-tablet-icon-medical-network-hospital-background-162019727.jpg);
}	
</style>
<script>
<%@include file="/WEB-INF/script/login.js"%>
</script>
</head>
<body>
		<button  class="button-85" role="button" onclick="document.location='/staffdetail/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>WELCOME STAFFS</h1>
		<div id="form">
			<form:form name="myForm" action="updatestaff" method="post" modelAttribute="updatestaffs">
				<div>
					<label for="staffId" class="label-size"></label>
					<div>
						<form:input  type="hidden" path="staffId" class="text-box" placeholder="101"
						title="StaffId can't be empty" required="true"/>
					</div>
				</div>
				<div>
				<label for="staffName" class="label-size">Staff Name</label>
				<div>
					<form:input path="staffName" class="text-box"
						placeholder="staffName"
						title="StaffName can't be empty or must contain only alphabets"
						pattern="^[A-Za-z\s]*$" required="true"/>
				</div>
			</div>
			<form:errors path="staffName" class="text-danger" />
			<div>
				<label for="dob" class="label-size">DateOfBirth</label>
				<div>
					<form:input type="Date" path="dob" class="text-box"
						placeholder="10-08-2022" required="true" />
				</div>
			</div>
			<div>
				<label for="gender" class="label-size">Gender</label>
				<div>
					<form:select path="gender" class="text-box" placeholder="Gender" name="gender" onblur="genderCheck();">
						<form:option value="Male">Male</form:option>
						<form:option value="Female">Female</form:option>
					</form:select>
				</div>
			</div>
			<form:errors path="gender" class="text-danger" />
			<div>
				<label for="phoneNo" class="label-size">PhoneNo</label>
				<div>
					<form:input path="phoneNo" class="text-box"
						placeholder="Phone Number" pattern="[1-9]{1}[0-9]{9}"
						title="Phone number should have atleast 10 digits" required="true" />
				</div>
			</div>
			<form:errors path="phoneNo" class="text-danger" />
			<div>
				<label for="emailId" class="label-size">EmailId</label>
				<div>
					<form:input path="emailId" class="text-box" placeholder="EmailId"
						pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" name="emailId"
						title="Enter valid email ex: example@gmail.com" required="true" onblur="emailIdCheck();" />
				</div>
			</div>
			<form:errors path="emailId" class="text-danger" />
			<div>
				<label for="password" class="label-size">Password</label>
				<div>
					<form:input type="password" path="password" class="text-box"
						placeholder="Password" pattern="^[A-Za-z0-9._%+-]+$" name="password"
						title="Enter valid Password" required="true" onblur="passwordCheck();"/>
				</div>
			</div>
			<form:errors path="password" class="text-danger" />
			<div>
				<label for="designation" class="label-size">Designation</label>
				<div>
						<form:select path="designation" class="text-box">
                            <form:option value="Doctor">Doctor</form:option>
                            <form:option value="Chief Doctor">Chief Doctor</form:option>
                            <form:option value="Nurse">Nurse</form:option>
                            <form:option value="Cleaner">Cleaner</form:option>
                            <form:option value="Ward Boy">Ward Boy</form:option>
                        </form:select>
				</div>
			</div>
			<form:errors path="designation" class="text-danger" />
			<div>
				<form:button class="button">Update Staff</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>