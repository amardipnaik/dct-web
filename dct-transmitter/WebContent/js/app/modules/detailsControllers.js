app.controller("detailsControllers", [
		"$scope", '$location', 'mainService', '$log', 'localStorageService', "$timeout", "toaster", "$rootScope", 
		function($scope, $location, mainService, $log, localStorageService, $timeout, toaster, $rootScope)
		{
			
			$log.info("---Inside detailsControllers---");
			
			$scope.productDetails=localStorageService.get('product');
			/*alert("$scope.productDetails"+$scope.productDetails);*/
			
			$scope.addProduct = function()
			{
				 
				/*var fileName = document.getElementById('file').files[0];
				 console.info("In detailsControllers ",fileName);*/
				 
				
				$scope.ProductBean = {
						name : '',
						brand:'',
						price:'',
						category:'',
						sale:'',
						image:'',
						compressionText:''
					}

				
				/*$scope.ProductBean.category=$scope.sex;*/
				$scope.ProductBean.name=document.getElementById("pname").value;
				$scope.ProductBean.compressionText=document.getElementById("sec").value;
			/*	$scope.ProductBean.brand=document.getElementById("pbrand").value;
				$scope.ProductBean.price=document.getElementById("pprice").value;*/
				/*$scope.ProductBean.category=document.getElementById("sex").value;*/
			
				console.info("In detailsControllers ",$scope.ProductBean);
				
				
				
				mainService.addProduct($scope.ProductBean)
				.then(
						function(result) {
							
							
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							
							});

			}
			
			
			
			$scope.showText = function(data)
			{
				
				alert("Your Secret Text Is ::: "+data);

			}
			
			
		
		
			
			$scope.viewUser = function()
			{
				
			mainService.viewUser()
				.then(
						function(result) {
							$scope.userList=result;
							$log.info("---Inside $scope.userList---"+$scope.userList);
							});

			}
			$scope.viewProduct = function()
			{
				
			mainService.viewProduct()
				.then(
						function(resultProduct) {
							$scope.productList=resultProduct;
							$log.info("---Inside $scope.productList---"+$scope.productList);
							});

			}
			$scope.viewFeedback = function()
			{
				
			mainService.viewFeedback()
				.then(
						function(result) {
							$scope.feedbackList=result;
							$log.info("---Inside $scope.feedbackList---"+$scope.feedbackList);
							});

			}
			$scope.viewWebDetails = function()
			{
				
			mainService.viewWebDetails()
				.then(
						function(result) {
							$scope.webDetails=result;
							$log.info("---Inside $scope.webDetails---"+$scope.webDetails);
							});

			}
			
			
			$scope.getUser = function()
			{
				
			mainService.getUser()
				.then(
						function(result) {
							$scope.user=result;
							localStorageService.set('loggedInUser',$scope.user.id)
							$log.info("---Inside $scope.webDetails---"+$scope.user);
							});

			}
			
			
			$scope.addCard = function(data)
			{
				
				$scope.CardBean = {
						productId : '',
						trasactionType:'ADD',
						userId:''
						
					}
				$scope.CardBean.userId=localStorageService.get('loggedInUser');
				$scope.CardBean.productId=data;
				
			mainService.addCardBean($scope.CardBean)
				.then(
						function(result) {
							
							$scope.addCardResult=result;
							
							if(addCardResult="success")
							{
							alert("Added To Card Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
						
							$log.info("---Inside $scope.webDetails---"+$scope.user);
							});

			}
			
			$scope.addWish = function(data)
			{
				
				$scope.CardBean = {
						productId : '',
						trasactionType:'WISH',
						userId:''
						
					}
				$scope.CardBean.userId=localStorageService.get('loggedInUser');
				$scope.CardBean.productId=data;
				
			mainService.addCardBean($scope.CardBean)
				.then(
						function(result) {
							
							$scope.addCardResult=result;
							
							if(addCardResult="success")
							{
							alert("Added To WishList Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
						
							$log.info("---Inside $scope.webDetails---"+$scope.user);
							});

			}
			
			
			$scope.WishList = function(data)
			{
				
				$scope.CardBean = {
						trasactionType:'WISH',
						userId:''
						
					}
				$scope.CardBean.userId=localStorageService.get('loggedInUser');
				$scope.CardBean.productId=data;
				
			mainService.productListByUserId($scope.CardBean)
				.then(
						function(result) {
							
							$scope.wishList=result;
							
							});

			}
			
			
			$scope.AddList = function(data)
			{
				
				$scope.CardBean = {
						trasactionType:'ADD',
						userId:''
						
					}
				$scope.CardBean.userId=localStorageService.get('loggedInUser');
				$scope.CardBean.productId=data;
				
			mainService.productListByUserId($scope.CardBean)
				.then(
						function(result) {
							
							$scope.addList=result;
							
							});

			}
			
			
			$scope.orderNow = function(data)
			{
				
				$scope.product=data;
				localStorageService.set('product',$scope.product);
				
				$location.path('/orderNow.htm');

			}
			
		
			
			$scope.notificationList = function()
			{
				
			mainService.notificationList()
				.then(
						function(result) {
							$scope.notification=result;
							
							});

			}
			
			$scope.orderList = function()
			{
				
			mainService.orderList()
				.then(
						function(result) {
							$scope.order=result;
							
							});

			}
			
			
			$scope.updateProduct = function(data)
			{
				$scope.ProductBean = {
						name : '',
						brand:'',
						price:'',
						category:'',
						sale:'',
						image:'',
						id:''
						
					}
				$scope.ProductBean.id=data;
				$scope.ProductBean.name=document.getElementById("pname").value;
				$scope.ProductBean.brand=document.getElementById("pbrand").value;
				$scope.ProductBean.price=document.getElementById("pprice").value;
				$scope.ProductBean.sale=document.getElementById("psale").value;
				console.info("In detailsControllers ",$scope.ProductBean);
				mainService.updateProduct($scope.ProductBean)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("Product Updated Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
					
							
							});
			}
			
			
			$scope.updateWebDetailsContact = function()
			{
				$scope.WebDetails = {
						contactUsPhone : '',
						contactUsEmail:'',
						about_Us:''
						
					}
				$scope.WebDetails.contactUsPhone=document.getElementById("cnum").value;
				$scope.WebDetails.contactUsEmail=document.getElementById("cmail").value;
				console.info("In detailsControllers ",$scope.WebDetails);
				mainService.updateWebDetails($scope.WebDetails)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("Details Updated Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
							});
			}
			
			
			$scope.updateWebDetailsAbout = function()
			{
				$scope.WebDetails = {
						contactUsPhone : '',
						contactUsEmail:'',
						about_Us:''
						
					}
				
				$scope.WebDetails.about_Us=document.getElementById("nmsg").value;
				console.info("In detailsControllers ",$scope.WebDetails);
				mainService.updateWebDetails($scope.WebDetails)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("Details Updated Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
							});
			}
			
			
			$scope.addNotification = function()
			{
				$scope.Notification = {
						subject : '',
						message:''
					}
				$scope.Notification.subject=document.getElementById("nsub").value;
				$scope.Notification.message=document.getElementById("nmsg").value;
				
				console.info("In detailsControllers ",$scope.Notification);
				mainService.addNotification($scope.Notification)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("Notification Send Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
							});
			}
			
			
			$scope.resetPassword = function(data)
			{
				$scope.RequestWrapper = {
						userId : ''
					}
				$scope.RequestWrapper.userId=data;
			
				console.info("In detailsControllers ",$scope.RequestWrapper);
				mainService.resetPassword($scope.RequestWrapper)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("Password Reset Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
							});
			}
			
			
			$scope.addFeedback = function()
			{
				$scope.FeedBackBean = {
						feedback : ''
					}
				$scope.FeedBackBean.feedback=document.getElementById("nmsg").value;
			
				console.info("In detailsControllers ",$scope.FeedBackBean);
				mainService.addFeedback($scope.FeedBackBean)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("Feedback Added Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
							});
			}
			
			
			
			$scope.deleteFeedback = function(data)
			{
				$scope.RequestWrapper = {
						userId : ''
					}
				$scope.RequestWrapper.userId=data;
			
				console.info("In detailsControllers ",$scope.RequestWrapper);
				mainService.deleteFeedback($scope.RequestWrapper)
				.then(
						function(result) {
						$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							$scope.resultData=result;
							$log.info("---Inside $scope.status---"+$scope.resultData);
							
							if(resultData="success")
							{
							alert("FeedBack Deleted Successfully")
							}
						else
							{
							alert("Failure.. Kindly Check With DB ")
							}
							
							});
			}
			
			
			
			
			
			
			
			
			
			
			
		
			
			
			
		
			$scope.getUser();
			$scope.viewProduct();
		
			

			
		}
		
		
		

		

			
])
