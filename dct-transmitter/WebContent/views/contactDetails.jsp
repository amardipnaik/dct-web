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
<h2>Contact Details</h2>
<table>
<th>Sr.No</th>
<th>Contact Number</th>
<th>Contact Email</th>
<th>Update Contact Number</th>
<th>Update Contact Email</th>
<th>Update Details</th>


  <tr ng-repeat="x in webDetails">
 
     <td>{{ $index + 1 }}</td>
    <td>{{ x.contactUsPhone}}</td>
    <td>{{ x.contactUsEmail}}</td>
     <td> <input type="text" placeholder="Enter Contact Number" name="cnum" id="cnum" /><br></td>
     <td> <input type="text" placeholder="Enter Contact Email" name="cmail" id="cmail" /><br></td>
   
      <td> <button ng-click="updateWebDetailsContact()">Update Contact</button></td>
   
      
     
  </tr>
</table>
</body>
</html>