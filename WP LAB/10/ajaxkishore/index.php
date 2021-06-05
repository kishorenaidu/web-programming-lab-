<html>
<title>PHP AJAX - Search </title>
<script type='text/javascript'>
function showName(str)
{
if (str.length == 0){ //exit function if nothing has been typed in the textbox
document.getElementById('txtName').innerHTML=''; //clear previous results
return;
}
if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
xmlhttp=new XMLHttpRequest();
} else {// code for IE6, IE5
xmlhttp=new ActiveXObject('Microsoft.XMLHTTP');
}
xmlhttp.onreadystatechange=function() {
if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
document.getElementById('txtName').innerHTML=xmlhttp.responseText;
}
}
xmlhttp.open('GET','framework.php?name='+str,true);
xmlhttp.send();
}

</script>
</head>
<body>
<h2>Fetch Student Names </h2>
<p><b>Type the first letter of the Student in IV Year CSE D</b></p>
<form method='POST' action='index.php'>
<P> Fetching Names of Students starting on a character </p>
<p> Department : <input type="text"/></p>
<p><input type='text' size='40' id='txtHint' onkeyup='showName(this.value)'></p>
</form>
<p>Matches: <span id='txtName'></span></p>
</body>
</html>