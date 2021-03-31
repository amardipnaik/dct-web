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
<h2>Product List</h2>
<table>
<th>Sr.No</th>
<th>Product Name</th>
<th>Product Brand</th>
<th>Product Price</th>
<th>Product Category</th>
<th>Enter Sale Discount</th>
<th>Update Discount</th>

  <tr ng-repeat="x in productList">
 
     <td>{{ $index + 1 }}</td>
    <td>{{ x.name }}</td>
    <td>{{ x.brand}}</td>
     <td>{{ x.price}}</td>
     <td>{{ x.category}}</td>
     <td>  <input type="text" placeholder="Enter sale Discount" name="sale" id="sale" /><br></td>
      <td> <button >Update discount</button></td>
   
      
     
  </tr>
</table>
</body>
</html>