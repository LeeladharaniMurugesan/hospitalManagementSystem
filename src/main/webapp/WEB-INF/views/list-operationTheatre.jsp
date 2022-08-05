<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OperationTheatre List</title>
</head>
<body>
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
					<th>Delete</th>
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
               	href="updateoperationtheatreform?theatreId=${opt.theatreId}">Edit</a></td>
                        <td><a
                            href="deleteoperationtheatre?theatreId=${opt.theatreId}">Delete</a></td>
				</c:forEach>
			</tbody>
		</table>
		 <div align="center">
        <a href="addoperationtheatreform"><button>Add New Operation Theatre</button></a>
    </div>
	</div>
</body>
</html>