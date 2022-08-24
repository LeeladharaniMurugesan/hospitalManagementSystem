<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html LANG="en">
<head>
<meta charset="ISO-8859-1">
<title>Bed List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file ="/WEB-INF/css/style.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px
 }
h1 {
	text-align: center;
}

div {
	text-align: center;
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
	<h1>BEDS LIST</h1>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
            <colgroup>
                <col span="10" style="background-color:	#BDB76B">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>BED TYPE</th>
					<th>BED BOOKEDTIME</th>
					<th>BED STATUS</th>
					<th>BED SIZE</th>
					<th>EDIT AND VIEW</th>
					<th>BED DETAILS</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bed" items="${allbed}">
					<tr>
						<td>${bed.bedType}</td>
						<td>${bed.bedBookedTime}</td>
						<td>${bed.bedStatus}</td>
						<td>${bed.bedSize}</td>
					<td><a
               	href="updatebedform?bedId=${bed.bedId}">Edit</a>
                        <a
                            href="getbeds?id=${bed.bedId}">View</a></td>
                          <td><a
                            href="getroombed?id=${bed.roomId}">BedDetails</a></td>
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