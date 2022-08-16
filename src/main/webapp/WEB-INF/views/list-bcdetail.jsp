<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>BookingCancellation List</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px
 }
h1 {
	text-align: center;
}

div {
	text-align: center;
}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'"
		style="float: right;">Home</button>
	<h1>BOOKING CANCELLATION LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="11" style="background-color: #C0C0C0">
			</colgroup>
			<thead>
				<tr>
					<th>BcId</th>
					<th>booking_date</th>
					<th>FromDate</th>
					<th>ToDate</th>
					<th>ResourceType</th>
					<th>Resource Id</th>
					<th>StaffId</th>
					<th>Status</th>
					<th>Edit</th>
					<th>View</th>
					<th>BookingDetails</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bc" items="${allbookcancel}">
					<tr>
						<td>${bc.bcId}</td>
						<td>${bc.bookingDate}</td>
						<td>${bc.fromDate}</td>
						<td>${bc.toDate}</td>
						<td>${bc.resourceType}</td>
						<td>${bc.resourceId}</td>
						<td>${bc.staffId}</td>
						<td>${bc.status}</td>
					<td><a
               	href="updatebcform?bcId=${bc.bcId}">Edit</a></td>
                        <td><a
                            href="getbc?id=${bc.bcId}">View</a></td>
                          <td><a
                            href="getbookingcancellationdetail?id=${bc.staffId}">BookingDetails</a></td>
                    </tr>
						
				</c:forEach>
			</tbody>
		</table>
		 <div style="margin-top: 25px;">
        <a href="addbcform"><button class="button">Add Booking</button></a>
    </div>
	</div>
</body>
</html>