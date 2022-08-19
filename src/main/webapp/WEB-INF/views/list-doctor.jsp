<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Doctor List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
body {
	background-image:
		url(https://t4.ftcdn.net/jpg/03/31/84/81/240_F_331848192_E6Ha8nggPUlySLwau3M7YimyqQ8FkzWo.jpg);
}
</style>
</head>
<body>
		<button style="    font-size: 12px;
    background-color: #f44336;
    color: black;
    float: left;" onclick="document.location='/home/staffuse'"><span class="fa fa-home" style="font-size:38px;"></span></button>
	<h1> DOCTORS LIST</h1>
		<div id="table root">
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:plum">
                <col span="4" style="background-color: crimson">
            </colgroup>
			<thead>
				<tr>
					<th>Staff Id</th>
					<th>Speciality</th>
					<th>Role Type</th>
					<th>NormalFees</th>
					<th>Edit</th>
					<th>View</th>
					<th>DoctorDetails</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doc" items="${alldoctor}">
					<tr>
						<td>${doc.staffId}</td>
						<td>${doc.speciality}</td>
						<td>${doc.roleType}</td>
						<td>${doc.normalFees}</td>
						<td><a
               	href="updatedoctorform?staffId=${doc.staffId}">Edit</a></td>
                        <td><a
                            href="getdoctor?id=${doc.staffId}">View</a></td>
                        <td><a href="getstaffdoctor?id=${doc.staffId}">DoctorList</a></td>
                    </tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	 <div>
        <a href="adddoctorform"><button class="button">Add New Doctor</button></a>
    </div>
</body>
</html>