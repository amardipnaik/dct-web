

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="mainApp">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<jsp:include page="/views/include/Meta.jsp"></jsp:include>
<jsp:include page="/views/include/Imports.jsp"></jsp:include>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link href="css/webkit/styles.css" rel="stylesheet" type="text/css" /> -->

</head>
<style>
body  {
  background-color: #43A047;
}
.fiveup {width: 90%;margin:1%;float: left;}

</style>

<body class="dashboardBody" ng-controller="mainController" bgcolor="#43A047">


	
	
 <div class="row" style="min-height:1000px;">
    <div  class="col-sm-12">
        <h1 style="text-align:center">Fashion Insta</h1>
        <hr/>
        <div class="col-xs-2">
            
          <!--   <ul class="nav nav-tabs tabs-left"> -->
               <br>
               <button ng-click="route('/checktor.htm')" class="fiveup">
               Check TOR               
                </button>
                <br><br>
                <button ng-click="route('/addIp.htm')" class="fiveup">
               Add IP Address
                </button>
                <br><br>
                <button ng-click="route('/viewIp.htm')" class="fiveup">
                View Stored IP
                </button>
                 <br><br>
                <button ng-click="route('/viewIpTor.htm')" class="fiveup">
                View Stored TOR IP
                </button>
                 <br><br>
                <button ng-click="route('/about.htm')" class="fiveup">
                About TOR
                </button>
                
                <!-- <li ng-click="route('/user.htm')"><a href="#addip" data-toggle="tab">Add IP Address</a></li> -->
               <!--  <li ng-click="route('/user.htm')"><a href="#viewip" data-toggle="tab">View Stored IP</a></li>
                 <li ng-click="route('/user.htm')"><a href="#viewtorip" data-toggle="tab">View Stored TOR IP</a></li> -->
                 <!-- <li ng-click="route('/user.htm')"><a href="#about" data-toggle="tab">About TOR</a></li> -->
            <!-- </ul> -->
        </div>
       
       
		<div>
			
			
				<div ng-view></div>
			
		</div>
		


	
		
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/main/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/main/configurations.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/main/controllers.js"></script>
	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/main/services.js"></script>
	
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/app/modules/detailsControllers.js"></script>

</html>