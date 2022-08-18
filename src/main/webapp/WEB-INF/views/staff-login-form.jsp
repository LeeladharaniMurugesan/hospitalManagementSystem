<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff Login Form</title>
<style>
<style><%@include file ="/WEB-INF/css/style2.css"%>
</style>
<script>
var emailIdCheck = function() {
    if(document.myForm.emailId.value == ""){
        
        if(alert("Email Id cannot be blank")){
            document.myForm.emailId.focus();
        }
        else
            document.activeElement.blur();
            
    }
    else{
        return false;
    } 
}
var passwordCheck = function() {
     var passwordRegex = new RegExp("^[A-Za-z0-9._%+-]+$");
     if(!document.myForm.password.value.match(passwordRegex)){
            if(alert("Password must be contain 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
                 document.myForm.password.focus();
            }
            else
                document.activeElement.blur();
        }
   else{
       return false;
   } 
  
}
</script>
</head>
<body>
		<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="root" style="width: auto;">
		<div id="form">
			<form:form name="myForm" action="staffpage" method="post" modelAttribute="staff" >
				<h1 style="font-size: 68px;">Staff Login</h1>

				<div style="margin: 14px 0px 14px 0px;">
					<label for="emailId" style="font-size: 35px;">EmailId </label>

					<form:input path="emailId" placeholder="emailId" style="width: 20%;height: 35px;margin-left: 20px;font-size: 17px;" id ="emailId" onblur="emailIdCheck();" />
				</div>
				<div style="margin: 14px 0px 14px 0px;">
					<label for="password" style="font-size: 35px;">Password </label>
					<form:input path="password" placeholder="password" type="password" style="width: 20%;height: 35px;font-size: 17px;" id ="password" onblur="passwordCheck();"/>
				</div>
				<div style="margin-top: 20px;margin-left: 42px;">
					<form:button class="login-form">Sign In</form:button>
					<form:button class="login-form" style="margin-left: 12px;">
						<a href="/staffdetail/addstaffform">Sign Up</a>
					</form:button>

				</div>
			</form:form>
		</div>
	</div>
</body>
</html>