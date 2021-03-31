app.directive('jqdatepicker', function() {
	return {
		restrict : 'A',
		require : 'ngModel',
		link : function(scope, element, attrs, ngModelCtrl) {
			$(function() {
				$(element).datepicker({
					dateFormat : 'yy-mm-dd',
					onSelect : function(date) {
						ngModelCtrl.$setViewValue(date);
						scope.$apply();
					}
				});
			});
		}
	}
})
app.directive("colorboxGetMap", function($log, $timeout, $rootScope) {
	return {
		link : function(scope, element, attrs) {
			var parameters = eval('(' + attrs.params + ')');

			$('#colorbox').draggable({
				disabled : true
			});
			element.hide();
			var selectedDate = localStorage.getItem('date');
			scope.$on("get-map", function() {
				$.colorbox({
					inline : true,
					width : '80%',
					height : '90%',
					escKey : true,
					overlayClose : true,
					href : parameters.href,
					onOpen : function() {
						$(parameters.href).show();
					},
					onLoad : function() {
					},
					onComplete : function() {
						$('#cboxLoadingGraphic, #cboxLoadingOverlay').hide();
					},
					onCleanup : function() {
						$(parameters.href).hide();
					},
					onClosed : function() {
					}
				});
			})
			scope.$on("colorbox-close", function() {
				$.colorbox.close();
			})
		},
		restrict : "A",
	}
});