

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

#Div_Horizontal {
  background: #4298a5;
  max-height: 50px;
  overflow-y: hidden;
}

.HorizontalTab {
  background: silver;
  width: 100px;
  height: 100px;
  float: right;
  margin: 1em;
}


/* body  {
 background-color: #4298a5; 
  background="${pageContext.request.contextPath}/images/fashion-wallpaper.jpg"
} */
.fiveup {width: 90%;margin:1%;float: right;}

</style>

<body class="dashboardBody" ng-controller="mainController" background="images/im-501035443.jpg" >


	
	
 <div class="row" style="min-height:1000px;">
    <div  class="col-sm-12">
        <h1 style="text-align:center">DCT Compression Transmitter Web</h1>
        <hr/>
<!--         <div id="Div_Horizontal">
  <div> <button ng-click="route('/addProduct.htm')"></div>
  <div class="HorizontalTab">My Order</div>
  <div class="HorizontalTab">Add To Card</div>
  <div class="HorizontalTab">Wishlist</div>
  <div class="HorizontalTab">Contact Us</div>
  <div class="HorizontalTab">About Us</div>
    <div class="HorizontalTab">Logout</div>
</div> -->
        
        
        <div class="col-xs-2">
            
          <!--   <ul class="nav nav-tabs tabs-left"> -->
          
  
               
                <button ng-click="route('/addProduct.htm')" class="fiveup">
               Upload Original Image
                </button>
                <br><br>
                
              <button ng-click="route('/shopNow.htm')" class="fiveup">
               View Compressed Image
                </button>
                <br><br>
                <button ng-click="route('/transfer.htm')" class="fiveup">
               Transfer Image
                </button>
                <br><br>  
             
                <button ng-click="route('/about.htm')" class="fiveup">
                About DCT
                </button>
                 <br><br>
               
                 
                 <a href="<%=request.getContextPath()%>/loginAuth"> <button class="fiveup">Logout</button> </a>
                 
             
                
                
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