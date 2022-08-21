<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>BookingCancellation List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
body{
background-image:url(https://images.unsplash.com/photo-1513151233558-d860c5398176?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1lZGljYWwlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60)}
</style>
</head>
<body>
		<button style="    font-size: 12px;
    background-color: #f44336;
    color: black;
    float: left;" onclick="document.location='/home/staffuse'"><span class="fa fa-home" style="font-size:38px;"></span></button>
	<h1>BOOKING CANCELLATION LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="11" style="background-color: #C0C0C0">
			</colgroup>
			<thead>
				<tr>
					<th>BOOKING ID</th>
					<th>BOOKING DATE</th>
					<th>FROM DATE</th>
					<th>TO DATE</th>
					<th>RESOURCE TYPE</th>
					<th>RRSOURCE ID</th>
					<th>STAFF ID</th>
					<th>STATUS</th>
					<th>EDIT AND VIEW</th>
					<th>BOOKING DETAILS</th>
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
               	href="updatebcform?bcId=${bc.bcId}">Edit</a>
                        <a
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