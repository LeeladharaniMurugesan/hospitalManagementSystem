/**
 * 
 */
 let emailIdCheck = function() {
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
let passwordCheck = function() {
     let passwordRegex = `("^[A-Za-z0-9._%+-]+$")`;
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