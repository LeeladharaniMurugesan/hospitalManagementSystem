<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html LANG="en">
<head>
<meta charset="ISO-8859-1">
<title>Ambulance List</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'" style="float: right;">Home</button>
	<h1> AMBULANCE LIST</h1>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
            <colgroup>
                <col span="10" style="background-color:#ff6666">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>registerId</th>
					<th>purchaseDate</th>
					<th>ambulanceModel</th>
					<th>status</th>
					<th>staffId</th>
					<th>Edit</th>
					<th>View</th>
					<th>AmbulanceDetail</th>
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
						
							<td><a
               	href="updateambulanceform?registerId=${amb.registerId}">Edit</a></td>
                        <td><a
                            href="getambulance?id=${amb.registerId}">View</a></td>
                             <td><a
                           href="getambulancedetail?id=${amb.staffId}">AmbulanceDetail</a></td>
                    </tr>
						
				</c:forEach>
			</tbody>
		</table>
		 <div>
        <a href="addambulanceform"><button class="button">Add Ambulance</button></a>
    </div>
	</div>
</body>
</html>