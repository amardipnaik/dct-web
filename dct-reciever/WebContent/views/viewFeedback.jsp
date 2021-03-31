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
<h2>User FeedBack</h2>
<table>
<th>Sr.No</th>
<th>Login</th>
<th>Email</th>
<th>FeedBack</th>
<th>Delete FeedBack</th>
  <tr ng-repeat="x in feedbackList">
     <td>{{ $index + 1 }}</td>
    <td>{{ x.username }}</td>
    <td>{{ x.email}}</td>
     <td>{{ x.feedback}}</td>
      <td><button ng-click="deleteFeedback(x.id)">Delete FeedBack</button></td>
  </tr>
</table>
</body>
</html>