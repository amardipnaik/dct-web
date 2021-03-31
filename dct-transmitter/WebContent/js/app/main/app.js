var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

var app = angular.module("mainApp", ['toaster', 'ngRoute', 'ngSanitize', 'angularFileUpload', 'LocalStorageModule','angularUtils.directives.dirPagination','ngMap', 'ui.bootstrap','blockUI','ngJsonExportExcel','base64'])

.config(['$httpProvider' , function ($httpProvider) {

    $httpProvider.defaults.headers.common['Content-Type'] = 'application/json';
    $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
   
    $httpProvider.interceptors.push(function ($q) {
        return {
            'responseError': function (rejection) {
            	console.log('rejection condition');
                if(rejection.status === 901) {
                	var urls = (window.location.href).split('/')
					window.location = urls[0]+"//"+urls[2]+"/"+urls[3]+"/login?msg=sessionExpired";
                }
                return $q.reject(rejection);
            }
        };
    });
   
}])
.constant('csrf_parameterName',header)
.constant('csrf_token',token)
