<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor List</title>
</head>
<body>
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
					<th>Normal Fees</th>
					<th>Edit</th>
					<th>Delete</th>
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
                            href="deletedoctor?staffId=${doc.staffId}">Delete</a></td>
                    </tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	 <div align="center">
        <a href="adddoctorform"><button>Add New Doctor</button></a>
    </div>
	</div>
</body>
</html>