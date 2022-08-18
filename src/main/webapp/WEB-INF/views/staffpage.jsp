<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
<style><%@include file ="/WEB-INF/css/style4.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add All Tables</title>
</head>
<body>
    <nav>
    <button onclick="document.location='/staffdetail/stafflogin'" style="float: right;">Logout</button>
       
        <div class="menu">
        <ul>
        	<li class="dropdown"><a href="javascript:void(0)"
        	class="dropbtn">STAFFS</a>
        	<div class="dropdown-content">
        	<a href="/staffdetail/list">Staff</a>
        	<a href="/staffdetail/doctorlist">Doctor</a>
        	<a href="/staffdetail/nurselist">Nurse</a>
        	<a href="/staffdetail/chiefdoctorlist">ChiefDoctor</a>
        	<a href="/staffdetail/ambulancedriverlist">Ambulance</a>
        	<a href="/staffdetail/cleanerlist">Cleaner</a>
        	<a href="/staffdetail/wardboylist">WardBoy</a>
        	</div>
        	
                <li><a href="/room/list">ROOMS</a></li>
                <li><a href="/operationTheatre/list">OPERATIONTHEATRES</a></li>
                <li><a href="/doctor/list">DOCTORS</a></li>
                <li><a href="/doctorvisit/list">VISITINGDOCTORS</a></li>
                <li><a href="/bed/list">BEDS</a></li>
                <li><a href="/ambulance/list">AMBULANCES</a></li>
                <li><a href="/bcdetail/list">BOOKINGS</a></li>
             </ul>
             </div>
          
    </nav>
    <div class="center">
    <div class="title">HOSPITAL MANAGEMENT SYSTEM</div>
    <div class="sub_title"> MEDICINES CURE DISEASES, BUT ONLY DOCTORS CAN CURE PATIENTS.</div>
</div>
</body>
</html>