<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
@import
    url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
    ;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

::selection {
    color: #000;
    background: #fff;
}

nav {
    position: fixed;
    background: #1b1b1b;
    width: 100%;
    padding: 10px 0;
    z-index: 12;
}

nav .menu {
    max-width: 1250px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 20px;
}

.menu .logo a {
    text-decoration: none;
    color: #fff;
    font-size: 25px;
    font-weight: 600;
}

.menu ul {
    display: inline-flex;
}

.menu ul li {
    list-style: none;
    margin-left: 7px;
}

.menu ul li:first-child {
    margin-left: 0px;
}

.menu ul li a {
    text-decoration: none;
    color: #fff;
    font-size: 18px;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    transition: all 0.3s ease;
}

.menu ul li a:hover {
    background: #fff;
    color: blue;
}

.center {
    position: absolute;
    top: 52%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    padding: 0 10px;
    text-align: center;
}

.center .title {
    color: #1b1811;
    font-size: 55px;
    font-weight: 600;
    margin-top: 100px;
}

.center .sub_title {
    color: #778ba5;
    font-size: 45px;
    font-weight: 400;
}

.center .btns {
    margin-top: 20px;
}

.center .btns button {
    height: 55px;
    width: 170px;
    border-radius: 5px;
    border: none;
    margin: 0 10px;
    border: 2px solid black;
    font-size: 20px;
    font-weight: 500;
    padding: 0 10px;
    cursor: pointer;
    outline: none;
    transition: all 0.3s ease;
}

.center .btns button:first-child {
    color: #fff;
    background: none;
}

.btns button:first-child:hover {
    background: white;
    color: black;
}

.center .btns button:last-child {
    background: white;
    color: black;
}

body {
    background-image: url(https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?cs=srgb&dl=pexels-pixabay-40568.jpg&fm=jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Add All Tables</title>
</head>
<body>
    <nav>
        <div class="menu">
            <ul>
                <li><a href="/staffdetail/list">StaffDetails</a></li>
                <li><a href="/room/list">RoomDetails</a></li>
                <li><a href="/operationTheatre/list">OTDetails</a></li>
                <li><a href="/doctor/list">DoctorDetails</a></li>
                <li><a href="/doctorvisit/list">DoctorVisitDetails</a></li>
                <li><a href="/bed/list">BedDetails</a></li>
                <li><a href="/ambulance/list">AmbulanceDetails</a></li>
                <li><a href="/bcdetail/list">BookingDetails</a></li>
            </ul>
        </div>
    </nav>

</body>
</html>