app.controller('contactCtrl', ['$scope', '$filter', '$http', '$window', '$location', '$timeout' ,function ($scope, $filter, $http, $window, $location, $timeout) {
	
	var baseUrl = $location.protocol()+"://"+location.host+url;
	
	
	$scope.setFlag = function(){
		$scope.errorFirstName = 0;
		$scope.errorLastName = 0;
		$scope.errorEmail = 0;
		$scope.errorSubject = 0;
	}
	
	$scope.sendNotificationFromContactUs = function(){
		if(!$scope.message) {
			$scope.message = "";
		}
		
		if(!$scope.firstname) {			
			$scope.errorFirstName = 1;
			$scope.msgFirstName = "Please enter first name";
			document.getElementById("firstname").focus();
		} else if(!$scope.lastname) {			
			$scope.errorLastName = 1;
			$scope.msgLastName = "Please enter last name";
			document.getElementById("lastname").focus();
		} else if(!$scope.email) {			
			$scope.errorEmail = 1;
			$scope.msgEmail = "Please enter email";
			document.getElementById("email").focus();
		} else if(!$scope.subject) {			
			$scope.errorSubject = 1;
			$scope.msgSubject = "Please enter subject";
			document.getElementById("subject").focus();
		} else {
			$scope.spin = 1;
			var link = baseUrl+'sendContactUsNotification?firstname='+$scope.firstname+'&lastname='+$scope.lastname+'&email='+$scope.email+'&subject='+$scope.subject+'&descr='+$scope.message;
			
			$http.post(link).success(function(data, status, headers, config) {
				$scope.sendemail = data;
    			if($scope.sendemail == "Success"){
    				$scope.spin = 0;
    				$scope.submitSuccess = 1;
    				$scope.msgSuccess = "Data Submitted successfully";
    				$timeout(function(){	    					
    					$scope.submitSuccess = 0;
    				}, 2000);
    				
    			} else {
    				$scope.spin = 0;    				
    				$scope.submitError = 1;
    				$scope.msgError = "Something went wrong! Please try again later..";
    				$timeout(function(){
    					$scope.submitError = 0;				
    				}, 3000);
    			}
    			
			}).error(function(data, status, headers, config) {
				$scope.sendemail = data;				
				$scope.spin = 0;
				$scope.submitError = 1;
				$scope.msgError = $scope.sendemail;
				$timeout(function(){
					$scope.submitError = 0;						
				}, 5000);
				
			});    			
		}
		
	}
		
	
	
}]);


