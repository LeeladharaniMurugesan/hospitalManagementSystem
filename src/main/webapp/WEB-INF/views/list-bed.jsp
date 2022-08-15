<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html LANG="en">
<head>
<meta charset="ISO-8859-1">
<title>Bed List</title>
<style><%@include file ="/WEB-INF/css/style.css"%>
h1 {
	text-align: center;
}

div {
	text-align: center;
}
</style>
</head>
<body>
	<h1>BEDS LIST</h1>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
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
					<th>RoomId</th>
					<th>Edit</th>
					<th>View</th>
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
                            href="getbeds?id=${bed.bedId}">View</a></td>
                    </tr>
						
				</c:forEach>
			</tbody>
		</table>
		 <div style="margin-top: 25px;">
        <a href="addbedform"><button class="button">Add New Bed</button></a>
    </div>
	</div>
</body>
</html>