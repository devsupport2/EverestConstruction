app.controller('headerCtrl', ['$scope', '$filter', '$http', '$window', '$location', '$timeout' ,function ($scope, $filter, $http, $window, $location, $timeout) {
	
	var baseUrl = $location.protocol()+"://"+location.host+url;
		
	var link = baseUrl+'getAllProjectWorkStatus';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getProjectstatus = data;
	}).error(function(data, status, headers, config) {
		$scope.getProjectstatus = "Response Fail";
	});
		
	var link = baseUrl+'getAllFeedback';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getAllFeedbackList = data;
	}).error(function(data, status, headers, config) {
		$scope.getAllFeedbackList = "Response Fail";
	});
	
}]);