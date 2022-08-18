<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>DoctorVisit List</title>
<style><%@include file="/WEB-INF/css/style.css"%>
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
		<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<h1> VISITING DOCTOR LIST</h1>
		<div id="table root">
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:skyblue">
                <col span="4" style="background-color: crimson">
            </colgroup>
			<thead>
				<tr>
					<th>SNo</th>
					<th>StaffId</th>
					<th>VisitedDate</th>
					<th>FromTime</th>
					<th>ToTime</th>
					<th>DailyFees</th>
					<th>Update</th>
					<th>View</th>
					<th>DoctorVisitDetails</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docv" items="${alldocvisit}">
					<tr>
						<td>${docv.sNo}</td>
						<td>${docv.staffId}</td>
						<td>${docv.visitedDate}</td>
						<td>${docv.fromTime}</td>
						<td>${docv.toTime}</td>
						<td>${docv.dailyFees}</td>
						<td><a
               	href="updatedocvisitform?sNo=${docv.sNo}">Edit</a></td>
                        <td><a
                            href="getdocvisit?id=${docv.sNo}">View</a></td>
                        <td><a
                            href="getstaffdocvisit?id=${docv.staffId}">DoctorVisitDetails</a></td>
                    </tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
        <a href="adddocvisitform"><button class="button">Add New Doctor</button></a>
    </div>
</body>
</html>