app.controller('homeCtrl', ['$scope', '$filter', '$http', '$window', '$location', '$timeout' ,function ($scope, $filter, $http, $window, $location, $timeout) {
	
	var baseUrl = $location.protocol()+"://"+location.host+url;
	
	$scope.getAllProject = function(){
		var link = baseUrl+'getSixProjectForFront';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getProjectsList = data;
		}).error(function(data, status, headers, config) {
			$scope.getProjectsList = "Response Fail";
		});
	}
	$scope.getProjectByStatus = function(workstatus){
		var link = baseUrl+'getProjectByStatus?workstatus='+workstatus;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getProjectsList = data;
		}).error(function(data, status, headers, config) {
			$scope.getProjectsList = "Response Fail";
		});
	}
	
	
	
	
	$scope.getAllProjectByStatus = function(workstatus){
		
		if(workstatus =="All"){
			var link = baseUrl+'getAllProjectForFront';
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getAllProjectsList = data;
			}).error(function(data, status, headers, config) {
				$scope.getAllProjectsList = "Response Fail";
			});
		} else{
			var link = baseUrl+'getAllProjectByStatus?workstatus='+workstatus;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getAllProjectsList = data;
			}).error(function(data, status, headers, config) {
				$scope.getAllProjectsList = "Response Fail";
			});
		}
	}
		
	var link = baseUrl+'getAllProjectWorkStatus';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getProjectstatus = data;
	}).error(function(data, status, headers, config) {
		$scope.getProjectstatus = "Response Fail";
	});
	
	var link = baseUrl+'getAllImages';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getImages = data;
	}).error(function(data, status, headers, config) {
		$scope.getImages = "Response Fail";
	});
	
	var link = baseUrl+'getAllImagesForFront';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getImagesFront = data;
	}).error(function(data, status, headers, config) {
		$scope.getImagesFront = "Response Fail";
	});
	
	var link = baseUrl+'getAllProjectLogo';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getprojectslogo = data;
	}).error(function(data, status, headers, config) {
		$scope.getprojectslogo = "Response Fail";
	});
	
	$scope.redirecttoproject = function(projectid){
		$window.open(url+'project_details?projectid='+projectid, '_blank');
	}
	
}]);