<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
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
					<th>StaffId</th>
					<th>StaffName</th>
					<th>Dob</th>
					<th>Gender</th>
					<th>PhoneNo</th>
					<th>EmailId</th>
					<th>Designation</th>
					 <th>Edit</th>
                    <th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="staff" items="${allstaff}">
					<tr>
						<td>${staff.staffId}</td>
						<td>${staff.staffName}</td>
						<td>${staff.dob}</td>
						<td>${staff.gender}</td>
						<td>${staff.phoneNo}</td>
						<td>${staff.emailId}</td>
						<td>${staff.designation}</td>
				 <td><a
               	href="updatestaffform?staffId=${staff.staffId}">Edit</a></td>
                        <td><a
                            href="deletestaff?staffId=${staff.staffId}">Delete</a></td>
                    </tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	 <div align="center">
        <a href="addstaffform"><button>Add New Doctor</button></a>
    </div>
</body>
</html>