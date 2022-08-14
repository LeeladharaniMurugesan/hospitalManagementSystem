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
	background-image:
		url("https://wallpapercave.com/dwp1x/wp2216034.jpg");
	background-position: center top;
	background-repeat: no-repeat;
	background-size: 1366px 768px;
	position: relative;
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 20px;
}

ul li a {
	text-decoration: none;
	color: black;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #fff;
}

.active {
	background-color: #04AA6D;
}

.dropdown-content a {
	color: white;
	padding: 5px 10px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

li a:hover {
	background-color: #111;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: black;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<div class="menu">
		<ul>
			<li><a href="#">HOME</a></li>
			<li><a href="/staffdetail/stafflogin">LOGIN</a></li>
			<li><a href="#">ABOUT</a></li>
			<li class="dropdown"><a href="javascript:void(0)"
				class="dropbtn">CONTACT</a>
				<div class="dropdown-content">
					<a href="#">Email us on leeladharanimurugesan@gmail.com</a> <a
						href="#">Call us on 8765123121</a>
				</div></li>

		</ul>
	</div>

</body>
</html>