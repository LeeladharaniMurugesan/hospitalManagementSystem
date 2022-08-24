<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add DoctorVisit</title>
<style><%@include file="/WEB-INF/css/style.css"%>
body {
	background-image:
		url(https://wallpapercave.com/dwp1x/wp2968505.jpg);
}
</style>
</head>
<body>
		<button class="button-85" role="button" onclick="document.location='/doctorvisit/list'" style="float: left; font-size: 15px;">Go Back</button>
	<h1>WELCOME DOCTORS</h1>
		<div id="form">
			<form:form action="adddocvisitdetail" method="post" modelAttribute="adddocvisit">
				<div>
					<label for="staffId" class="label-size">StaffId </label>
					<div>
				<form:select path="staffId" placeholder="Staff Id" class="text-box">

                            <c:forEach var="allStaffDoctor" items="${allstaff}">
                                <form:option value="${allStaffDoctor.staffId}"
							label="${allStaffDoctor.staffId}" />
                            </c:forEach>
                        </form:select>	
				</div>
				</div>
				<div>
					<label for="visitedDate" class="label-size">VisitedDate </label>
					<div>
						<form:input  type="Date" path="visitedDate" class="text-box" placeholder="15-08-2022"
						title="VisitedDate can't be empty" required="true"/>
					</div>
				</div>
				<div>
					<label for="fromTime" class="label-size">From Time</label>
					<div>
						<form:input path="fromTime" type="time" class="text-box" placeholder="12:00"/>
					</div>
				</div>
				<form:errors path="fromTime" class="text-danger" />
				<div>
					<label for="toTime" class="label-size">To Time</label>
					<div>
						<form:input path="toTime" type="time" class="text-box" placeholder="12:00"/>
					</div>
				</div>
				<form:errors path="toTime" class="text-danger"/>
				<div>
					<label for="dailyFees"class="label-size">DailyFees</label>
					<div>
						<form:input path="dailyFees" class="text-box"
						title="DailyFees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true"/>
					</div>
				</div>
				<div>
					<form:button class="button">Add DoctorVisit</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>