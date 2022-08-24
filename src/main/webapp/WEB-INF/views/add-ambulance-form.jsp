<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Ambulance</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://img.freepik.com/free-vector/emergency-ambulance-with-coronavirus-concept_23-2148534628.jpg?w=740&t=st=1660554389~exp=1660554989~hmac=a365ae79d089f5d9e439a2246bf5c307cc7a7a7c2197dda7b24f160e35b926b8)
}
.label-text {
	font-size: 26px;
	color: white;
}
</style>
</head>
<body>
		<button class="button-85" role="button" onclick="document.location='/ambulance/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1 class="label-text">ADD AMBULANCES</h1>
	<div id="root">
		<div id="form">
			<form:form action="addambulances" method="post" modelAttribute="addambulance">
				<div>
					<label for="registerNo" class="label-size">Register No</label>
					<div>
						<form:select path="registerNo" class="text-box">
                            <form:option value="GJ 18 G 5123">GJ 18 G 5123</form:option>
                            <form:option value="TN 60 AG 3333">TN 60 AG 3333</form:option>
                            <form:option value="GJ 18 V 8844">GJ 18 V 8844</form:option>
                            <form:option value="BR 01 PC 2433">BR 01 PC 2433</form:option>
                            <form:option value="GJ 18 GJ 6521">GJ 18 GJ 6521</form:option>
                            <form:option value="BR 19 PC 6231">BR 19 PC 6231</form:option>
                            <form:option value="TN 60 AG 3231">TN 60 AG 3231</form:option>
                        </form:select>
					</div>
				</div>
				<div>
					<label for="purchaseDate" class="label-size">Purchase Date </label>
					<div>
						<form:input type="Date" path="purchaseDate" class="text-box" />
					</div>
				</div>
				<div>
					<label for="ambulanceModel"class="label-size">Ambulance Model</label>
					<div>
						<form:select path="ambulanceModel" class="text-box">
                            <form:option value="Mahindra Supro">Mahindra Supro</form:option>
                            <form:option value="Force Trax">Force Trax</form:option>
                            <form:option value="Mobile ICU">Mobile ICU</form:option>
                            <form:option value="Force Traveller">Force Traveller</form:option>
                            <form:option value="Tata Winger">Tata Winger</form:option>
                            <form:option value="Eicher Skyline">Eicher Skyline</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="ambulanceModel" class="text-danger" />
				<div>
					<label for="status" class="label-size">Status</label>
					<div>
						<form:select path="status" class="text-box">
                            <form:option value="On Duty">On Duty</form:option>
                            <form:option value="Repair">Repair</form:option>
                            <form:option value="Not In Use">Not In Use</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="ambulanceStatus" class="text-danger" />
				<div>
					<label for="ambulanceStatus" class="label-size">Ambulance Status</label>
					<div>
						<form:select path="ambulanceStatus" class="text-box">
                            <form:option value="Booked">Booked</form:option>
                            <form:option value="Available">Available</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<label for="staffId" class="label-size">Staff Id</label>
					<div>
						<form:select path="staffId" placeholder="Staff Id" class="text-box">

                            <c:forEach var="alldriver" items="${allstaff}">
                                <form:option value="${alldriver.staffId}"
							label="${alldriver.staffId}" />
                            </c:forEach>
                        </form:select>	
					</div>
				</div>
				<div>
					<form:button class="button">Add ambulance</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>