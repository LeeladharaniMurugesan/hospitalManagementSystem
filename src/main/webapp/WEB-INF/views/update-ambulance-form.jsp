<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Ambulance</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
body {
	background-image:
	linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
	url(https://img.freepik.com/premium-vector/ambulance-icon_28461-140.jpg?size=626&ext=jpg&ga=GA1.2.761107559.1660373804)
}
.label-text {
	font-size: 26px;
	color: white;
}
</style>
</head>
<body>
	<button class="button-85" role="button" onclick="document.location='/ambulance/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>UPDATE AMBULANCES</h1>
	<div id="root">
		<div id="form">
			<form:form action="updateambulance" method="post"
				modelAttribute="updateamb">
				<div>
					<label for="ambulanceId" class="label-size label-text"></label>
					<div>
						<form:input type="hidden" path="ambulanceId" class="text-box"/>
					</div>
				</div>
				<form:errors path="ambulanceId" class="text-danger" />
				<div>
					<label for="registerNo" class="label-size label-text">Register No</label>
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
					<label for="purchaseDate" class="label-size label-text">Purchase Date </label>
					<div>
						<form:input type="Date" path="purchaseDate" class="text-box" />
					</div>
				</div>
				<div>
					<label for="ambulanceModel"class="label-size label-text">Ambulance Model</label>
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
					<label for="status" class="label-size label-text">Status</label>
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
					<label for="ambulanceStatus" class="label-size label-text">Ambulance Status</label>
					<div>
						<form:select path="ambulanceStatus" class="text-box">
                            <form:option value="Booked">Booked</form:option>
                            <form:option value="Available">Available</form:option>
                             <form:option value="Not Available">Not Available</form:option>
                        </form:select>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				<div>
					<label for="staffId" class="label-size label-text">Staff Id</label>
					<div>
						<form:input path="staffId" class="text-box"/>
					</div>
				</div>
				<form:errors path="staffId" class="text-danger" />
				<div>
					<form:button class="button">Update ambulance</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>