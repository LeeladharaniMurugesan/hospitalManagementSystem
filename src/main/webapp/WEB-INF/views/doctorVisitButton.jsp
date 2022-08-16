<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Button</title>
</head>
<body>
    <br>
    <form action="/staffdetail/getstaffdocvisit?id=" method="get"
        style="text-align: center; margin-top: 5%;">
        <label>Enter StaffId</label> <input type="text"
            placeholder="StaffId" name="staffId"> <input
            type='submit' value="View" name="submit">
    </form>
</body>
</html>