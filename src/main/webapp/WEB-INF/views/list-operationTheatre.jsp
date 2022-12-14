<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>OperationTheatre List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
 body {
	background-image:
		url(https://media.istockphoto.com/photos/blurred-lights-blue-background-picture-id1336653065?b=1&k=20&m=1336653065&s=170667a&w=0&h=eba7nQsZr8PHYhj9qq8dLETGJu4oUfaP44jw-zgJHkA=);
}
</style>
</head>
<body>
<div>
	<button style="    font-size: 12px;
    background-color: #f44336;
    color: black;
    float: left;" onclick="document.location='/home/staffuse'"><span class="fa fa-home" style="font-size:38px;"></span></button>
	<h1>OPERATION THEATRE LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:pink">
                <col span="4" style="background-color: crimson">
            </colgroup>
			<thead>
				<tr>
					<th>THEATRE TYPE</th>
					<th>THEATRE LOCATION</th>
					<th>THEATRE BOOKEDTIME</th>
					<th>THEATRE STATUS</th>
					<th>EDIT AND VIEW</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="opd" items="${alloperationtheatre}">
					<tr>
						<td>${opd.theatreType}</td>
						<td>${opd.theatreLocation}</td>
						<td>${opd.theatreBookedTime}</td>
						<td>${opd.theatreStatus}</td>
						<td><a href="updateoperationtheatreform?theatreId=${opd.theatreId}">Edit</a>
						<a href="getoperationtheatre?id=${opd.theatreId}">View</a></td>
				</c:forEach>
			</tbody>
		</table>
		</div>
		 <div style="margin-top: 25px;">
        <a href="addoperationtheatreform"><button class="button">Add New OT</button></a>
    </div>
	</div>
</body>
</html>