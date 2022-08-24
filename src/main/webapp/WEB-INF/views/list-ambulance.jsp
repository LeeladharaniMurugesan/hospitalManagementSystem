<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Ambulance List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px;
width:100%;
cellpadding:2px;
}
 body {
	background-image:
		url(https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1lZGljYWwlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60);
}
</style>
</head>
<body>
	<button style="    font-size: 12px;
    background-color: #f44336;
    color: black;
    float: left;" onclick="document.location='/home/staffuse'"><span class="fa fa-home" style="font-size:38px;"></span></button>
	<h1> AMBULANCE LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:#E0B0FF">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>REGISTER NO</th>
					<th>PURCHASE DATE</th>
					<th>AMBULANCE MODEL</th>
					<th>AMBULANCE TIME</th>
					<th>STATUS</th>
					<th>AMBULANCE STATUS</th>
					<th>EDIT AND VIEW</th>
					<th>AMBULANCE DETAILS</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="amb" items="${allambulance}">
					<tr>
						<td>${amb.registerNo}</td>
						<td>${amb.purchaseDate}</td>
						<td>${amb.ambulanceModel}</td>
						<td>${amb.ambulanceTime}</td>
						<td>${amb.status}</td>
						<td>${amb.ambulanceStatus}</td>
						
							<td><a
               	href="updateambulanceform?ambulanceId=${amb.ambulanceId}">Edit</a>
               	<a
                            href="getambulance?id=${amb.ambulanceId}">View</a></td>
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