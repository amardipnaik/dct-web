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
<h2>Register User List</h2>
<table>
<th>Sr.No</th>
<th>Login</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Contact Details</th>
<th>City</th>
<th>Sex</th>
  <tr ng-repeat="x in userList">
     <td>{{ $index + 1 }}</td>
    <td>{{ x.login }}</td>
    <td>{{ x.firstName}}</td>
     <td>{{ x.lastName}}</td>
     <td>{{ x.email}}</td>
     <td>{{ x.contactNumber}}</td>
      <td>{{ x.city}}</td>
        <td>{{ x.sex}}</td>
      
     
  </tr>
</table>
</body>
</html>