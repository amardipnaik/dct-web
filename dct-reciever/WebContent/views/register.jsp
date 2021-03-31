<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <jsp:include page="/views/include/Meta.jsp"></jsp:include>
<jsp:include page="/views/include/Imports.jsp"></jsp:include> --%>
<script>



function register()
{

	
	var form = document.loginform;

	
	 var login = form.login.value;
	 
	
	 
	var password = form.pwd.value;
	
	
	
	var fname = form.fname.value;
	var lname = form.lname.value;
	var cn = form.cn.value;
	var em = form.em.value;
	
	if(login=="")
	{
	alert("Please Enter Login !!!")
	return
	}
	
	if(fname=="")
	{
	alert("Please Enter First Name !!!")
	return
	}
	
	if(fname=="")
	{
	alert("Please Enter Last Name !!!")
	return
	}
	
	if(password=="")
	{
	alert("Please Enter Password !!!")
	return
	}

	
	if(cn=="")
	{
	alert("Please Enter Contact Number !!!")
	return
	}
	
	if(em=="")
	{
	alert("Please Enter Email !!!")
	return
	}
	



	form.action = "<%=request.getContextPath()%>/register";
	form.method = "post";
	form.submit();


}

</script>

<title>Insert title here</title>
<style>



@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4298a5;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #4298a5;
}


.buttonClass {
 /*  background: #4298a5; */
}

.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4298a5;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}


</style>
</head>




<body>

<div class="login-page">
  <div class="form">
    
    <form class="login-form"  name="loginform" method="post">
    <input type="text" placeholder="Login" name="login" id="login"/>
    <input type="text" placeholder="First Name" name="fname" id="fname"/>
        <input type="text" placeholder="Last Name" name="lname" id="lname"/>
         <input type="password" placeholder="Password" name="pwd" id="pwd"/>
           <input type="text" placeholder="Contact Number" name="cn" id="cn"/>
             <input type="text" placeholder="Email" name="em" id="em"/>
              <input type="text" placeholder="City" name="ct" id="ct"/>
             

     
      <button onclick="register()">Register</button><br><br>
       </form>
     
    
   
    
  </div>
  
 
</div>

<!--  <a href="views/register.jsp"> <button>Register New User</button> </a> -->



</body>



</html>