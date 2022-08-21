<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Room Bed Detail</title>
<style><%@include file ="/WEB-INF/css/style1.css"%>
h1{text-align:center;}
div{text-align:center}
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
body {
	background-image:
		url(https://images.unsplash.com/photo-1512678080530-7760d81faba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80);
}
</style>
</head>
<body>
<button class="button-85" role="button" onclick="document.location='/room/list'" style="float: left; font-size: 15px;">Go Back</button>
<h1>ROOM DETAILS</h1>
<div id="root">
		<div id="form">
			<form:form action=" " method="post" modelAttribute="getroom">
				<div>
					<label for="roomId" class="label-size">Room Id</label>
					<div>
						<form:input path="roomId" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomType" class="label-size">Room Type</label>
					<div>
						<form:input path="roomType" class="text-box" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roomLocation" class="label-size">Room Location</label>
					<div>
						<form:input path="roomLocation" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="numOfBeds" class="label-size">Number of Beds</label>
					<div>
						<form:input path="numOfBeds" class="text-box" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomStatus" class="label-size">Room Status</label>
					<div>
						<form:input path="roomStatus" class="text-box" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="bedlist">
		<h1>BEDS LIST</h1>
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:	#BDB76B">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>BedId</th>
					<th>BedType</th>
					<th>BedStatus</th>
					<th>BedSize</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bed" items="${bedlist}">
					<tr>
						<td>${bed.bedId}</td>
						<td>${bed.bedType}</td>
						<td>${bed.bedStatus}</td>
						<td>${bed.bedSize}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>