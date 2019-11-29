/**
 * 
 */
function validate(){
//	var userFname=document.userregistration.userFname.value;
//	var userLname=document.usetregistration.userLname.value;
//	var userGender=document.usetregistration.userGender.value;
//	var userDob=document.usetregistration.userDob.value;
//	var userAddress=document.usetregistration.userAddress.value;
	var userPhone=document.userSignup.userPhone.value;
	var userAltPhone=document.userSignup.userAltPhone.value;
	//var userEmail=document.usetregistration.userEmail.value;
//	var userName=document.usetregistration.userName.value;
	var userPassword=document.userSignup.userPassword.value;
	var ConPassword=document.userSignup.ConPassword.value;
	
	if(userPhone.length!=10 || userAltPhone.length!=10){
        alert("Enter valid number");
        return false;
    }
	
	if(userPassword.length<6 || userPassword.length>8){
        alert("Password 6-8 characters");
        return false;
    }
	
	if(userPassword!=ConPassword){
		alert("password doesn't match");
		return false;
	}
	
    return true;
	
}

