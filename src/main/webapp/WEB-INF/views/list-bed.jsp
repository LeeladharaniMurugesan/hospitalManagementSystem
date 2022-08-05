<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bed List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
            <colgroup>
                <col span="10" style="background-color:yellow">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>BedId</th>
					<th>BedType</th>
					<th>BedStatus</th>
					<th>BedSize</th>
					<th>RoomId</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bed" items="${allbed}">
					<tr>
						<td>${bed.bedId}</td>
						<td>${bed.bedType}</td>
						<td>${bed.bedStatus}</td>
						<td>${bed.bedSize}</td>
						<td>${bed.roomId}</td>
					<td><a
               	href="updatebedform?bedId=${bed.bedId}">Edit</a></td>
                        <td><a
                            href="deletebed?bedId=${bed.bedId}">Delete</a></td>
				</c:forEach>
			</tbody>
		</table>
		 <div align="center">
        <a href="addbedform"><button>Add New Operation Theatre</button></a>
    </div>
	</div>
</body>
</html>