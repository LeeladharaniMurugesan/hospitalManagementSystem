<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctorVisit List</title>
</head>
<body>
	<div id="table root">
		<div id="table root">
		<table border="2" width="100%" cellpadding="2">
            <colgroup>
                <col span="10" style="background-color:red">
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
					<th>Delete</th>
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
                            href="deletedocvisit?sNo=${docv.sNo}">Delete</a></td>
                    </tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
	<div align="center">
        <a href="adddocvisitform"><button>Add New Doctor</button></a>
    </div>
</body>
</html>