var widgetId1;
var widgetId2 ;
var onloadCallback = function() {
		widgetId1 = grecaptcha.render(document.getElementById('recaptchaC'), {
		'sitekey' : '6LfktIQbAAAAAPl41upiHNqQ4ZK0E9XNKnsgaFu-'
	//'sitekey' : '6LcVGGsbAAAAAI9BKpEjumdbjNoGrQ9Hcv4KCEDl'
        });
		
		widgetId2 = grecaptcha.render(document.getElementById('recaptchaB'), {
 			'sitekey' : '6LfktIQbAAAAAPl41upiHNqQ4ZK0E9XNKnsgaFu-'
			//'sitekey' : '6LcVGGsbAAAAAI9BKpEjumdbjNoGrQ9Hcv4KCEDl'
         });
      };

app.controller('projectCtrl', ['$scope', '$filter', '$http', '$window', '$location', '$timeout' ,function ($scope, $filter, $http, $window, $location, $timeout) {
	
	var baseUrl = $location.protocol()+"://"+location.host+url;
	
	
	$scope.$on('ngRepeatFinished', function(ngRepeatFinishedEvent) {
	    //you also get the actual event object
	    //do stuff, execute functions -- whatever...
		
		console.log("Repeat finished");
		$('a').nivoLightbox();
	});
	
	
	$scope.getProjectDetailsById = function(projectid) {
		var link = baseUrl+'getProjectDetailById?projectid='+projectid;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.projectDetail = data;
			$scope.projectid = $scope.projectDetail.projectId;
			$scope.projectname = $scope.projectDetail.projectTitle;
			$scope.projectlayouts = $scope.projectDetail.layoutMap;
			$scope.projectwebsite = $scope.projectDetail.siteLink;
		/*	
			widgetId2 = grecaptcha.render(document.getElementById('recaptchaA'), {
		        'sitekey' : '6LcVGGsbAAAAAI9BKpEjumdbjNoGrQ9Hcv4KCEDl'
		      });
			*/
			/*$scope.getMeta($scope.projectlayouts);

			var end = getMeta($scope.projectlayouts);
			var w = end.w;
			var h = end.h;
			$window.alert(w+'width'+h+'height');*/
			  /*$scope.imgpath = new Image();
			  $scope.imgpath.src = $scope.projectDetail.layoutMap;
			  $window.alert($scope.imgpath.src); 
			  $window.alert($scope.imgpath.width, $scope.imgpath.height); */ 
			  
			
			
			var link = baseUrl+'getProjectSpecificationById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectSpecification = data;
			}).error(function(data, status, headers, config) {
				$scope.projectSpecification = "Response Fail";
			});
			
			var link = baseUrl+'getProjectAmenityById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectAmenity = data;
			}).error(function(data, status, headers, config) {
				$scope.projectAmenity = "Response Fail";
			});
			
			var link = baseUrl+'getProjectAreaById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectArea = data;
			}).error(function(data, status, headers, config) {
				$scope.projectArea = "Response Fail";
			});
			
			var link = baseUrl+'getProjectDetailsById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectDetails = data;
			}).error(function(data, status, headers, config) {
				$scope.projectDetails = "Response Fail";
			});
			
			var link = baseUrl+'getProjectPriceDetailsById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectPriceDetails = data;
			}).error(function(data, status, headers, config) {
				$scope.projectPriceDetails = "Response Fail";
			});
							
			var link = baseUrl+'getProjectPaymentScheduleById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectPaymentSchedule = data;
			}).error(function(data, status, headers, config) {
				$scope.projectPaymentSchedule = "Response Fail";
			});
			
			var link = baseUrl+'getPaymentDetailById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.paymentById = data;				 	
			}).error(function(data, status, headers, config) {
				$scope.paymentById = "Response Fail";
			});
			
			var link = baseUrl+'getProjectRealestateById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.realestateById = data;				 	
			}).error(function(data, status, headers, config) {
				$scope.realestateById = "Response Fail";
			});
			
			var link = baseUrl+'getProjectRealestateSubcategoryById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.subrealestateById = data;				 	
			}).error(function(data, status, headers, config) {
				$scope.subrealestateById = "Response Fail";
			});
			
			var link = baseUrl+'getProjectRealestateTypeById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.realestatetypeById = data;				 	
			}).error(function(data, status, headers, config) {
				$scope.realestatetypeById = "Response Fail";
			});
			
			var link = baseUrl+'getProjectFloorLayoutById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.floorlayoutById = data;	
				//$scope.floorlayoutById = [];
			}).error(function(data, status, headers, config) {
				$scope.floorlayoutById = "Response Fail";
			});
			
			var link = baseUrl+'getOneWorkstatusImageById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.workstatusimage =data;				 	
			}).error(function(data, status, headers, config) {
				$scope.workstatusimage = "Response Fail";
			});
			
			var link = baseUrl+'getAllPropertyByProjectId?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getProperty = data;
			}).error(function(data, status, headers, config) {
				$scope.getProperty = "Response Fail";
			});
			
			/*var link = baseUrl+'getAllBankById?projectid='+projectid;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.projectbank = data;				 	
			}).error(function(data, status, headers, config) {
				$scope.projectbank = "Response Fail";
			});*/
			
		}).error(function(data, status, headers, config) {
			$scope.projectDetail = "Response Fail";
		});
	}
	
	var link = baseUrl+'getAllWorkstatusImage';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.allworkstatusimage = data;	
	}).error(function(data, status, headers, config) {
		$scope.allworkstatusimage = "Response Fail";
	});
	
	$scope.getMeta = function(url){
		 var w; var h;
		 var img=new Image;
		 img.src=url;
		 img.onload=function(){w=this.width; h=this.height;};
		 return {w:w,h:h}    
		}

		// "http://snook.ca/files/mootools_83_snookca.png" //1024x678
		// "http://shijitht.files.wordpress.com/2010/08/github.png" //128x128

		
	
	$scope.setFlag = function() {
		$scope.errorFirstName = 0;
		$scope.errorLastName = 0;
		$scope.errorEmail = 0;
		$scope.errorNumber = 0;
		$scope.errorStateName = 0;
		$scope.errorCaptcha = 0;
	}
	
	$scope.createUser = function(){

		if(!$scope.message){
			$scope.message="";
		}
		if(!$scope.firstname) {
			$scope.errorFirstName = 1;
			$scope.msgFirstName = "Please enter first name!";
			document.getElementById("firstname").focus();
		} else if(!$scope.email) {
			$scope.errorEmail = 1;
			$scope.msgEmail = "Please enter email!";
			document.getElementById("email").focus();
		} else if(!$scope.number) {
			$scope.errorNumber = 1;
			$scope.msgNumber = "Please enter mobile number!";
			document.getElementById("number").focus();
		}else if(!grecaptcha.getResponse(widgetId1)) {
				$scope.errorCaptcha=1;
			    isCaptchaValidated = false;
			    $scope.msgCaptcha = "Please verify that you are a human!";
		}else {
			$scope.errorCaptcha=0;
			$scope.spin = 1;					
		
			var link = baseUrl+'sendContactUsNotification?projectid='+$scope.projectid+'&firstname='+$scope.firstname+'&lastname='+$scope.lastname+'&email='+$scope.email+'&number='+$scope.number+'&descr='+$scope.message;
			
			$http.post(link).success(function(data, status, headers, config) {                                                                                         
				$scope.createclient = data;
			
				if($scope.createclient == 'Success'){
					$scope.clientSubmitSuccess = 1;
					$scope.clientSubmitError = 0;
					$scope.spin = 0;
					$scope.successMsg = "Submitted Successfully..";
					
					$timeout(function(){
						$scope.clientSubmitSuccess = 0;
						$scope.message="";
						$scope.firstname="";
						$scope.email="";
						$scope.number="";
					}, 2000);
				} else {
					$scope.errorMsg = $scope.createclient;
				}
			}).error(function(data, status, headers, config) {
				$scope.createclient = data;
				$scope.clientSubmitSuccess = 0;
				$scope.clientSubmitError = 1;
				$scope.spin = 0;
				$scope.errorMsg = $scope.createclient;
			});
		}
	}

	
	$scope.setFlag1 = function() {
		$scope.errorFirstName1 = 0;
		$scope.errorLastName1 = 0;
		$scope.errorEmail1 = 0;
		$scope.errorNumber1 = 0;
		$scope.errorStateName1 = 0;
		$scope.errorCaptcha1 = 0;
	}
	
	$scope.pdfDownload = function(){

		$scope.subject = " for "+$scope.projectDetail.projectTitle;
		if(!$scope.message1){
			$scope.message1="";
		}
		if(!$scope.firstname1) {
			$scope.errorFirstName1 = 1;
			$scope.msgFirstName1 = "Please enter first name!";
			document.getElementById("firstname1").focus();
		} else if(!$scope.email1) {
			$scope.errorEmail1 = 1;
			$scope.msgEmail1 = "Please enter email!";
			document.getElementById("email1").focus();
		} else if(!$scope.number1) {
			$scope.errorNumber1 = 1;
			$scope.msgNumber1 = "Please enter mobile number!";
			document.getElementById("number1").focus();
		}else if(!grecaptcha.getResponse(widgetId2 )) {
				$scope.errorCaptcha1=1;
			    isCaptchaValidated = false;
			    $scope.msgCaptcha1 = "Please verify that you are a human!";
		}else {
			$scope.errorCaptcha1=0;
			$scope.spin = 1;					
		
			var link = baseUrl+'sendPDFContactNotification?firstname='+$scope.firstname1+'&phone='+$scope.number1+'&email='+$scope.email1+'&subject='+$scope.subject+'&descr='+$scope.message1;
			
			$http.post(link).success(function(data, status, headers, config) {
				$scope.createclient = data;
			
				if($scope.createclient == 'Success'){
					$scope.clientSubmitSuccess1 = 1;
					$scope.clientSubmitError1 = 0;
					$scope.spin = 0;
					$scope.successMsg1 = "Submitted Successfully.. redirecting...";
					
					$timeout(function(){
						$scope.clientSubmitSuccess1 = 0;
						$scope.message1="";
						$scope.firstname1="";
						$scope.email1="";
						$scope.number1="";
						window.open($scope.projectDetail.projectPDF, '_blank');
						$('#pdfDownload').modal('toggle');
						
					}, 2000);
				} else {
					$scope.errorMsg1 = $scope.createclient;
				}
			}).error(function(data, status, headers, config) {
				$scope.createclient = data;
				$scope.clientSubmitSuccess1 = 0;
				$scope.clientSubmitError1 = 1;
				$scope.spin = 0;
				$scope.errorMsg1 = $scope.createclient;
			});
		}
	}

	

}]);