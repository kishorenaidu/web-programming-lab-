function validate(){
 var name = document.getElementById("name").value;
 var reg = document.getElementById("reg").value;
 var phone = document.getElementById("phone").value;
 var pemail = document.getElementById("pemail").value;
 var semail = document.getElementById("semail").value;
 var error_message = document.getElementById("error_message");

 error_message.style.padding = "10px";

 var text;
 if(name.length < 5){
 text = "Please Enter valid Name";
 error_message.innerHTML = text;
 return false;
 }
 if(reg.length > 15){
 text = "Please Enter valid/Full Register Number";
 error_message.innerHTML = text;
 return false;
 }
 if(reg.indexOf("RA") == -1 || pemail.length < 6){
 text = "Please Enter Register Number Starting with RA";
 error_message.innerHTML = text;
 return false;
 }
 if(isNaN(phone) || phone.length != 10){
 text = "Please Enter valid Phone Number";
 error_message.innerHTML = text;
 return false;
 }
 if(pemail.indexOf("@") == -1 || pemail.length < 6){
 text = "Please Enter valid Email";
 error_message.innerHTML = text;
 return false;
 }
 if(semail.indexOf("@srmist") == -1 || pemail.length < 6){
 text = "Please Enter Valid SRM Email";
 error_message.innerHTML = text;
 return false;
 }
 alert("Form Submitted Successfully!");
 return true;
}
