function validate() {
  let x = document.forms["myForm"]["username"].value;
  let y = document.forms["myForm"]["password"].value;
  let z = document.forms["myForm"]["confirmpassword"].value;
  let w = document.forms["myForm"]["email"].value;
  if (x == "" || y == "" || z == "" || w == "") {
    if (x == "") {
      document.getElementById("umsg").innerHTML = "A username is required";
    }
    else {
      document.getElementById("umsg").innerHTML = "";
    }
    if (y == "") {
      document.getElementById("p1").innerHTML = "Please fill out the password";
    }
    else {
      document.getElementById("p1").innerHTML = "";
    }
    if (z == "") {
      document.getElementById("p2").innerHTML = "Please confirm the password";
    }
    else {
      document.getElementById("p2").innerHTML = "";
    }
       if (w == "") {
      document.getElementById("ema").innerHTML = "Please enter a valid Email ";
    }
    else {
      document.getElementById("ema").innerHTML = "";
    }
  }
  if (x != "") {
     var uValid = /^[a-zA-Z][a-zA-Z0-9][a-zA-Z0-9]/;
     if (x.length < 3) {
       document.getElementById("umsg").innerHTML = "Username invalid. It needs to be over 3 alphanumerics in length ";
     }
     if (x.match(uValid)) {
       document.getElementById("umsg").innerHTML = "";
     }
     else {
       document.getElementById("umsg").innerHTML = "Username invalid. It needs to be over 3 alphanumerics in length ";
     }
    }
    if (y != "") {
       var pValid = new Array();
      pValid.push("[A-Z]");
      pValid.push("[a-z]");
      pValid.push("[0-9]");
     pValid.push("[!@#$%^&*-]");
       var val = "0";
        
     if (y.length < 8 || y.length >= 20) {
       document.getElementById("p1").innerHTML = "Password invalid. It needs to be over 8 characters but less than 20 in length, with at least one capital, one number, and one special character in the mix ";
       return false;
     }
     for (var i = 0; i < pValid.length; i++) {
         if (new RegExp([pValid[i]]).test(y)) {
		val=val+i;
         }
     }
     if (val != "00123") {
       document.getElementById("p1").innerHTML = "Password invalid. It needs to be over 8 characters but less than 20 in length, with at least one capital, one number, and one special character in the mix ";
     }
     if (val == "00123") {
       document.getElementById("p1").innerHTML = "";
     }  
    }
    if ( z != "") {
      if (z == y) {
        document.getElementById("p2").innerHTML = "";
      }
      else {
        document.getElementById("p2").innerHTML = "Passwords do not match";
      }
   }
   if (x.match(uValid) && z == y && x != "" && y != "" && z != "") {
      document.getElementById("conf").innerHTML = "Registration successfully submitted!";
      return;
   }
   return false;
}

