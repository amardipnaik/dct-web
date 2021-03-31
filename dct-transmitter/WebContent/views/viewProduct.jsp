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
<th>Name</th>

<th>Brand</th>

<th>Price</th>
<th>Discount</th>
<th>Edit Name</th>
<th>Edit Brand</th>
<th>Edit Price</th>
<!-- <th>Product Category</th> -->
<th>Enter Sale Discount</th>
<th>Update</th>

  <tr ng-repeat="x in productList">
 
     <td>{{ $index + 1 }}</td>
    <td>{{ x.name }}</td>
    
    <td>{{ x.brand}}</td>
  
     <td>{{ x.price}}</td>
     <td>{{ x.sale}}%</td>
     
    <!--  <td>{{ x.category}}</td> -->
     <td>  <input type="text" placeholder="Enter New Name" name="pname" id="pname" /><br></td>
        <td>  <input type="text" placeholder="Enter New Brand" name="pbrand" id="pbrand" /><br></td>
         <td>  <input type="text" placeholder="Enter New Price" name="pprice" id="pprice" /><br></td>
     <td>  <input type="text" placeholder="Enter Sale Discount" name="psale" id="psale" /><br></td>
      <td> <button ng-click="updateProduct(x.id)">Update</button></td>
   
      
     
  </tr>
</table>
</body>
</html>