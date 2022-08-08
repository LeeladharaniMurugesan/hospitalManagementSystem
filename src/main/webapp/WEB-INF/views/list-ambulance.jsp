<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ambulance List</title>
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
					<th>registerId</th>
					<th>purchaseDate</th>
					<th>ambulanceModel</th>
					<th>status</th>
					<th>staffId</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="amb" items="${allambulance}">
					<tr>
						<td>${amb.registerId}</td>
						<td>${amb.purchaseDate}</td>
						<td>${amb.ambulanceModel}</td>
						<td>${amb.status}</td>
						<td>${amb.staffId}</td>
				</c:forEach>
			</tbody>
		</table>
		 <div align="center">
        <a href="addambulanceform"><button>Add New Ambulance</button></a>
    </div>
	</div>
</body>
</html>