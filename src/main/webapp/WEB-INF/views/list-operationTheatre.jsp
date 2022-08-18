<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>OperationTheatre List</title>
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
<h1>OPERATION THEATRE LIST</h1>
		<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:pink">
                <col span="4" style="background-color: crimson">
            </colgroup>
			<thead>
				<tr>
					<th>TheatreId</th>
					<th>TheatreType</th>
					<th>TheatreLocation</th>
					<th>TheatreStatus</th>
					<th>Edit</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="opd" items="${alloperationtheatre}">
					<tr>
						<td>${opd.theatreId}</td>
						<td>${opd.theatreType}</td>
						<td>${opd.theatreLocation}</td>
						<td>${opd.theatreStatus}</td>
						<td><a
               	href="updateoperationtheatreform?theatreId=${opd.theatreId}">Edit</a></td>                             <td><a
                            href="getoperationtheatre?id=${opd.theatreId}">View</a></td>
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