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
<h2>My Order List</h2>
<table>
<th>Sr.No</th>
<th>Product Name</th>
<th>Product Price</th>
<th>Delivary PinCode</th>
<th>Delivary City</th>
<th>Delivary State</th>
<!-- <th>Product Category</th> -->


  <tr ng-repeat="x in order">
 
     <td>{{ $index + 1 }}</td>
    <td>{{ x.productName }}</td>
    <td>{{ x.price}}</td>
     <td>{{ x.pinCode}}</td>
      <td>{{ x.city}}</td>
      <td>{{ x.state}}</td>
   </tr>
</table>
</body>
</html>