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
</style>
</head>
<body>
<div>
<h1>OPERATION THEATRE LIST</h1>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
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