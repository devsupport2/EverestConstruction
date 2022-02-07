app.controller('achievementCtrl', ['$scope', '$filter', '$http', '$window', '$location', '$timeout' ,function ($scope, $filter, $http, $window, $location, $timeout) {
	
	var baseUrl = $location.protocol()+"://"+location.host+url;
		
	var link = baseUrl+'getAllAchievement';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getAchievements = data;
	}).error(function(data, status, headers, config) {
		$scope.getAchievements = "Response Fail";
	});
		
}]);