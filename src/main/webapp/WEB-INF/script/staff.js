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
var ambulanceModelCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.ambulanceModel.value.match(nameRegex)) {
		if (alert("AmbulanceModel can't be empty and must contain only alphabets")) {
			document.form.ambulanceModel.focus();
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
var roomTypeCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.roomType.value.match(nameRegex)) {
		if (alert("RoomType can't be empty and must contain only alphabets")) {
			document.form.roomType.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var roomLocationCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.roomLocation.value.match(nameRegex)) {
		if (alert("RoomLocation can't be empty and must contain only alphabets")) {
			document.form.roomLocation.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var roomStatusCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.roomStatus.value.match(nameRegex)) {
		if (alert("RoomStatus can't be empty and must contain only alphabets")) {
			document.form.roomStatus.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var statusCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.status.value.match(nameRegex)) {
		if (alert("Status can't be empty and must contain only alphabets")) {
			document.form.status.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var theatreLocationCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.theatreLocation.value.match(nameRegex)) {
		if (alert("TheatreLocation can't be empty and must contain only alphabets")) {
			document.form.TheatreLocation.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var theatreStatusCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.theatreStatus.value.match(nameRegex)) {
		if (alert("TheatreStatus can't be empty and must contain only alphabets")) {
			document.form.theatreStatus.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var bedStatusCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.bedStatus.value.match(nameRegex)) {
		if (alert("BedStatus can't be empty and must contain only alphabets")) {
			document.form.bedStatus.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var bedSizeCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.bedSize.value.match(nameRegex)) {
		if (alert("BedSize can't be empty and must contain only alphabets")) {
			document.form.bedSize.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var specialityCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.speciality.value.match(nameRegex)) {
		if (alert("Speciality can't be empty and must contain only alphabets")) {
			document.form.speciality.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var roleTypeCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.roleType.value.match(nameRegex)) {
		if (alert("RoleType can't be empty and must contain only alphabets")) {
			document.form.roleType.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var bedTypeCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.form.bedType.value.match(nameRegex)) {
		if (alert("BedType can't be empty and must contain only alphabets")) {
			document.form.bedType.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var normalFeesCheck = function() {
	var nameRegex = new RegExp("^[0-9]+$");
	if (!document.form.normalFees.value.match(nameRegex)) {
		if (alert("NormalFees can't be empty and must contain only numbers")) {
			document.form.normalFees.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var dailyFeesCheck = function() {
	var nameRegex = new RegExp("^[0-9]+$");
	if (!document.form.dailyFees.value.match(nameRegex)) {
		if (alert("DailyFees can't be empty and must contain only numbers")) {
			document.form.dailyFees.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var staffIdCheck = function() {
	var nameRegex = new RegExp("^[0-9]+$");
	if (!document.form.staffId.value.match(nameRegex)) {
		if (alert("StaffId cannot be null and it contains only integers")) {
			document.form.staffId.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
var roomIdCheck = function() {
	var nameRegex = new RegExp("^[0-9]+$");
	if (!document.form.roomId.value.match(nameRegex)) {
		if (alert("RoomId cannot be null and should contains integer")) {
			document.form.roomId.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}
