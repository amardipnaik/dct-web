app.controller("mainController", function($rootScope,$location, $window, $scope, $log, $http, $timeout, mainService, $location, toaster ,localStorageService,blockUI)
{
	$log.info('In Main controller');
	
	$log.info(' loggedInUserData Details main ');
	
	$scope.route = function(val) {
		
		console.info("In Route request"+val);
		
		$location.path(val);
		
	}
	



});