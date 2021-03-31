app.config(function($routeProvider, $locationProvider)
{
	/*alert("config called");*/
	$routeProvider.when('/', {
		templateUrl : 'views/addProduct.jsp',
		controller : 'detailsControllers'
	}).when('/viewUser.htm', {
		templateUrl : 'views/viewUser.jsp',
		controller : 'detailsControllers'
	}).when('/addProduct.htm', {
		templateUrl : 'views/addProduct.jsp',
		controller : 'detailsControllers'
	}).when('/viewProduct.htm', {
		templateUrl : 'views/viewProduct.jsp',
		controller : 'detailsControllers'
	})
	.when('/viewFeedback.htm', {
		templateUrl : 'views/viewFeedback.jsp',
		controller : 'detailsControllers'
	})
	.when('/notification.htm', {
		templateUrl : 'views/notification.jsp',
		controller : 'detailsControllers'
	})
	.when('/contactDetails.htm', {
		templateUrl : 'views/contactDetails.jsp',
		controller : 'detailsControllers'
	})
	.when('/aboutUser.htm', {
		templateUrl : 'views/aboutUser.jsp',
		controller : 'detailsControllers'
	}).when('/contactDetailsUser.htm', {
		templateUrl : 'views/contactDetailsUser.jsp',
		controller : 'detailsControllers'
	})
	.when('/about.htm', {
		templateUrl : 'views/about.jsp',
		controller : 'detailsControllers'
	})	.when('/myProfile.htm', {
		templateUrl : 'views/myProfile.jsp',
		controller : 'detailsControllers'
	}).when('/shopNow.htm', {
		templateUrl : 'views/shopNow.jsp',
		controller : 'detailsControllers'
	}).when('/notificationUser.htm', {
		templateUrl : 'views/notificationUser.jsp',
		controller : 'detailsControllers'
	}).when('/addCard.htm', {
		templateUrl : 'views/addCard.jsp',
		controller : 'detailsControllers'
	}).when('/wishList.htm', {
		templateUrl : 'views/wishList.jsp',
		controller : 'detailsControllers'
	}).when('/designMe.htm', {
		templateUrl : 'views/designMe2.jsp',
		controller : 'detailsControllers'
	}).when('/orderNow.htm', {
		templateUrl : 'views/orderNow.jsp',
		controller : 'detailsControllers'
	}).when('/orderList.htm', {
		templateUrl : 'views/orderList.jsp',
		controller : 'detailsControllers'
	}).when('/feedback.htm', {
		templateUrl : 'views/feedback.jsp',
		controller : 'detailsControllers'
	}).when('/transfer.htm', {
		templateUrl : 'views/transferImage.jsp',
		controller : 'detailsControllers'
	})

});

