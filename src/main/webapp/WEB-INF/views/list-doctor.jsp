<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Doctor List</title>
<style><%@include file="/WEB-INF/css/style.css"%>
h1 {text-align: center;}
div{text-align: center;}
</style>
</head>
<body>
	<button onclick="document.location='/home/staffuse'" style="float: right;">Home</button>
	<h1> DOCTORS LIST</h1>
		<div id="table root">
		<table border="2" width="100%" cellpadding="2">
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