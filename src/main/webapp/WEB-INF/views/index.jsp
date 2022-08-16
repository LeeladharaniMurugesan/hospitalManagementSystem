<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management System</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background-image: url("https://i.pinimg.com/originals/fc/ac/d7/fcacd784b8b929c66a1150d2ed2e2044.jpg");
	background-position: center top;
	background-repeat: no-repeat;
	background-size: 1200px 676px;
	position: relative;
}

nav {
	background: black;
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
	font-size: 30px;
	font-weight: 600;
	text-align: left;
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
	background: #ADCF9A;
	color: blue;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
	<nav>
		       
		<div class="menu">
			           
			<div class="logo">
				                <a>HOSPITAL MANAGEMENT SYSTEM</a>            
			</div>
			           
			<ul>
				<li><a href="#">HOME</a></li>
				<li><a href="/staffdetail/stafflogin"> STAFF LOGIN</a></li>
				<li><a href="#about">ABOUT</a></li>
				<li class="dropdown"><a href="javascript:void(0)"
					class="dropbtn">CONTACT</a>
					<div class="dropdown-content">
						<a href="#">Email us on mmlkhospital@gmail.com</a> <a href="#">Call
							us on 8248886062</a>
					</div>
			</ul>
			       
		</div>
		   
	</nav>
</body>
</html>