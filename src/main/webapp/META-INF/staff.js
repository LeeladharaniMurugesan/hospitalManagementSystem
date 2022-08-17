/**
 * 
 */
 var staffNameCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z]+$");
    if (!document.form.staffName.value.match(nameRegex)) {
        if (alert("Name can't be empty and must contain only alphabets")) {
            document.form.staffName.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
var dateCheck = function() {
    if (!document.form.dob.value.match == " ") {
        if (alert("Date of Birth cannot be null")) {
            document.form.dob.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
var genderCheck = function() {
    if (!document.form.gender.value.match == "") {
        if (alert("Gender cannot be null")) {
            document.form.gender.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
var phoneNoCheck = function() {
    var nameRegex = new RegExp("[0-9]{10}");
    if (!document.form.phoneNo.value.match(nameRegex)) {
        if (alert("Phone number must have 10 digits")) {
            document.form.phoneNo.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
var emailIdCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
    if (!document.form.emailId.value.match(nameRegex)) {
        if (alert("Email not in the correct format")) {
            document.form.emailId.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
var passwordCheck = function() {
    var nameRegex = new RegExp("^[A-Za-z0-9._%+-]+$");
    if (!document.form.password.value.match(nameRegex)) {
        if (alert("Password must begin with letter and contain atleast one number and must have atleast 8 characters")) {
            document.form.password.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
var desginationCheck = function() {
    var nameRegex = new RegExp("^[A-Za-z]\\w{3,20}$");
    if (!document.form.desgination.value.match(nameRegex)) {
        if (alert("Name can't be empty and must contain only alphabets")) {
            document.form.desgination.focus();
        } else
            document.activeElement.blur();
    } else {
        return false;
    }
}
