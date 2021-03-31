<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
</style>
<body>
<h2>Notification Details</h2>
       Notification Subject    :
  <input type="text" placeholder="Notification Subject" name="nsub" id="nsub" /><br><br>
  
   Notification Message:
 <!--  <input type="" placeholder="Notification Message" name="nmeg" id="nmsg" /><br> -->
<textarea name="nmeg" id="nmsg">Enter Message...</textarea><br>

     
     <button ng-click="addNotification()">Send Notification To all User</button>
</body>
</html>