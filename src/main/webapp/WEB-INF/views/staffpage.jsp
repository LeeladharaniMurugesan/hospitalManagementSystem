<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Page</title>
</head>
<body>
<div><h1>Staff Details</h1></div>
<div><a href="/staffdetail/list">List</a></div>
<div><a href="/staffdetail/addstaffform">Add</a></div>
<div><a href="/staffdetail/updatestaffform?staffId=">Update</a></div>
<div><a href="/staffdetail/deletestaff?staffId=">Delete</a></div>
<div><a href="/staffdetail/getstaff?id=">FindByStaffId</a></div>

<div></div>
<div><h1>Room Details</h1></div>
<div><a href="/room/list">List</a></div>
<div><a href="/room/addroomform">Add</a></div>
<div><a href="/room/updateroomform?roomId=">Update</a></div>
<div><a href="/room/deleteroomform?roomId=">Delete</a></div>
<div><a href="/room/getroom?roomId=">FindByRoomId</a></div>
<div></div>
<div><h1>OperationTheatre Details</h1></div>
<div><a href="/operationTheatre/list">List</a></div>
<div><a href="/operationTheatre/addoperationtheatreform">Add</a></div>
<div><a href="/operationTheatre/updateoperationtheatreform?theatreId=">Update</a></div>
<div><a href="/operationTheatre/deleteoperationtheatre?theatreId=">Delete</a></div>
<div><a href="/operationTheatre/getoperationtheatre?id=">FindByTheatreId</a></div>
<div></div>
<div><h1>Doctor Details</h1></div>
<div><a href="/doctor/list">List</a></div>
<div><a href="/doctor/adddoctorform">Add</a></div>
<div><a href="/doctor/updatedoctorform?staffId=">Update</a></div>
<div><a href="/doctor/deletedoctor?staffId=">Delete</a></div>
<div><a href="/doctor/getdoctor?id=">FindbyDoctorId</a></div>
<div><a href="/staffdetail/getstaffdoctor">FindByStaffDoctorId</a></div>
<div></div>
<div><h1>Doctor Visit Detail</h1></div>
<div><a href="/doctorvisit/list">List</a></div>
<div><a href="/doctorvisit/adddocvisitform">Add</a></div>
<div><a href="/doctorvisit/updatedocvisitform?sNo=">Update</a></div>
<div><a href="/doctorvisit/deletedocvisit?sNo=">Delete</a></div>
<div><a href="/doctorvisit/getdocvisit?id=">FindByDocVisitId</a></div>
<div><a href="/staffdetails//getstaffdocvisit?id=">GetStaffDocVisitbyId</a></div>
<div></div>
<div><h1>Ambulance Detail</h1></div>
<div><a href="/ambulance/list">List</a></div>
<div><a href="/ambulance/addambulanceform">Add</a></div>
<div><a href="/ambulance/updateambulanceform?registerId=">Update</a></div>
<div><a href="/ambulance/deleteambulance?registerId==">Delete</a></div>
<div><a href="/ambulance/getambulance?id=">FindByAmbulanceId</a></div>
<div><a href="/staffdetails/getambulancedetail?id=">GetStaffAmbulancebyId</a></div>
<div></div>
<div><h1>Bed Detail</h1></div>
<div><a href="/bed/list">List</a></div>
<div><a href="/bed/addbedform">Add</a></div>
<div><a href="/bed/updatebedform?bedId=">Update</a></div>
<div><a href="/bed/deletebed?bedId==">Delete</a></div>
<div><a href="/bed/getbeds?id=">FindBybedId</a></div>
<div><a href="/room/getroombed?roomId=">FindByRoomId</a></div>
<div></div>
<div><h1>Booking Cancellation Detail</h1></div>
<div><a href="/bcdetail/list">List</a></div>
<div><a href="/bcdetail/addbcform">Add</a></div>
<div><a href="/bcdetail/updatebcform?bcId=">Update</a></div>
<div><a href="/bcdetail/deletebc?bcId=">Delete</a></div>
<div><a href="/bcdetail/getbc?id=">FindBybcId</a></div>
<div><a href="/staffdetails/getbookingcancellationdetail?id=">FindByStaffBookingCancellationId</a></div>
</body>
</html>