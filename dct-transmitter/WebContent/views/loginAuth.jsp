<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <jsp:include page="/views/include/Meta.jsp"></jsp:include>
<jsp:include page="/views/include/Imports.jsp"></jsp:include> --%>
<script>



function validate()
{

	var form = document.loginform;

	 var login = form.login.value;
	var password = form.password.value;
	
	if(login=="")
	{
	alert("Please Enter Login !!!")
	return
	}

if(password=="")
{
alert("Please Enter Password !!!")
return
}

	 /* if(login=='admin' & password=='admin')
		{  */
	form.action = "<%=request.getContextPath()%>/login";
	form.method = "post";
	form.submit();
	/* 	}
	else
		{
		alert("Please Enter Valid Credentials!!")
		}  */
}



</script>

<title>DCT Compression receiver Web</title>
<meta name="viewport" content="width=device-width, initial-scale=1">





<style>
form {
    border: 1px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #2b6bacc2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}


.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

</style>
</head>




<body background="images/im-501035443.jpg" >
<h1 style="text-align:center;color: #080f17c2;" >DCT Compression Receiver Web</h1>
      <!--   <hr/> -->


<form  name="loginform">



  
<!--     <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="login" id="login" required>
    <label><b>Password </b></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" required><br>
        
    <button type="submit" onclick="validate()">Login</button> -->

<table align="right">
  <tr>
    <th> <label><b>Username</b></label></th>
   <td><input type="text" placeholder="Enter Username" name="login" id="login" required></td>
  </tr>
   <tr>
   
    <th><label><b>Password </b></label></th>
     <td>  <input type="password" placeholder="Enter Password" name="password" id="password" required></td>
  </tr>
   <tr>
   
    <th><label><b>Login </b></th>
     <td>  <button type="submit" onclick="validate()">Login</button></td>
  </tr>
   <tr>
   </tr>
   </table>





  
</form>


</body>



</html>