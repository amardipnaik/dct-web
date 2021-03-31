app.factory(
				"mainService",
				function($http, $log, toaster, $location) {
					var isDisabled = "";

					return {
						setDisableButtonsOnRowClick : function(data) {
							isDisabled = data;
						},
						getDisableButtonsOnRowClick : function() {
							return isDisabled;
						},
					      addProduct : function(data) {

						
							var promise = $http({
								url : "addProduct",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						updateProduct : function(data) {

							
							var promise = $http({
								url : "updateProduct",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						updateFeedback : function(data) {

							
							var promise = $http({
								url : "updateFeedback",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						updateWebDetails : function(data) {

							
							var promise = $http({
								url : "updateWebDetails",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
                         viewUser : function() {

                        	 
							var promise = $http({
								url : "userList",
								method : "GET"
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
                         viewProduct : function() {

                        	 
							var promise = $http({
								url : "productList",
								method : "GET"
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
                         viewFeedback : function() {

                        	 
							var promise = $http({
								url : "feedbackList",
								method : "GET"
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
                         viewWebDetails : function() {

                        	 
							var promise = $http({
								url : "webDetailsList",
								method : "GET"
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
                         getUser : function() {

                        	 
							var promise = $http({
								url : "getUser",
								method : "GET"
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						addNotification : function() {

                       	 
							var promise = $http({
								url : "addNotification",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						addCardBean : function(data) {

	                       	 
							var promise = $http({
								url : "addCardBean",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						productListByUserId : function(data) {

	                       	 
							var promise = $http({
								url : "productListByUserId",
								method : "POST",
								data : JSON.stringify(data)
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						notificationList : function() {

	                       	 
							var promise = $http({
								url : "notificationList",
								method : "Get",
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						addOrder : function(data) {

	                       	 
							var promise = $http({
								url : "addOrder",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						orderList : function() {

	                       	 
							var promise = $http({
								url : "orderList",
								method : "Get",
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								/*console.log("-------In role Service Reponce-------",response);*/
								return response.data;
							})
							return promise;
						},
						updateProduct : function(data) {

	                       	 
							var promise = $http({
								url : "updateProduct",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								
								return response.data;
							})
							return promise;
						},
						updateWebDetails : function(data) {

	                       	 
							var promise = $http({
								url : "updateWebDetails",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								
								return response.data;
							})
							return promise;
						},
						addNotification : function(data) {

	                       	 
							var promise = $http({
								url : "addNotification",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								
								return response.data;
							})
							return promise;
						},
						resetPassword : function(data) {

	                       	 
							var promise = $http({
								url : "resetPassword",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								
								return response.data;
							})
							return promise;
						},
						addFeedback : function(data) {

	                       	 
							var promise = $http({
								url : "addFeedback",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								
								return response.data;
							})
							return promise;
						},
						deleteFeedback : function(data) {

	                       	 
							var promise = $http({
								url : "updateFeedback",
								method : "POST",
								data : JSON.stringify(data)
								
							}).success(
									function(data, status, header, config,
											statusText) {
									}).error(
									function(data, status, header, config,
											statusText) {
										if (!status === 901)
											toaster.pop('error', status,
													statusText);
									}).then(function(response) {
								
								return response.data;
							})
							return promise;
						}
		        		
					}
				});

				
app.factory("sharedProperties", function($http, $log, toaster, $location) {
	var property = null;

	return {
		getProperty : function() {
			return property;
		},
		setProperty : function(value) {
			property = value;
		}
	};
});