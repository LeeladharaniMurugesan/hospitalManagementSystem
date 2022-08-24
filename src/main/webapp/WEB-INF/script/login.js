/**
 * 
 */
 let emailIdCheck = function() {
	let nameRegex = `("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")`;
	if (!document.myForm.emailId.value.match(nameRegex)) {
		if (alert("Email not in the correct format")) {
			document.MyForm.emailId.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
let passwordCheck = function() {
     let passwordRegex = `("^[A-Za-z0-9._%+-]+$")`;
     if(!document.myForm.password.value.match(passwordRegex)){
            if(alert("Password must be contain 8 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
                 document.myForm.password.focus();
            }
            else
                document.activeElement.blur();
        }
   else{
       return false;
   } 
  
}