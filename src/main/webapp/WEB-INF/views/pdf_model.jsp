<div class="modal fade" id="pdfDownload"" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="model">
	<div class="modal-dialog " role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="form-group" id="mtitle">Fill first to get the PDF</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">x</span>
				</button>
			</div>
			<div class="pdfModel col">

				               <form ng-submit="pdfDownload()">
                                        <div class="tab-content pt-1 pb-0 px-0 shadow-none">
                                            <div class="tab-pane fade show active" id="schedule" role="tabpanel">
                                              
                                                <div class="form-group mb-2 mt-4">
                                                   <input type="text" name="firstname" id="firstname1" ng-model="firstname1" class="form-control"
												placeholder="Your full name..." ng-change="setFlag1()">
											<p ng-show="errorFirstName1 == 1" style="color: red;">{{msgFirstName1}}</p>
										
                                                </div>

                                                <div class="form-group mb-2">
                                                    <input type="email" name="email" id="email1" ng-model="email1"
													class="form-control" placeholder="Your Email..." ng-change="setFlag1()">
													<p ng-show="errorEmail1 == 1" style="color: red;">{{msgEmail1}}</p>
                                                </div>

                                                <div class="form-group mb-4">
                                                   <input type="number" name="number" ng-model="number1" maxlength="10" id="number1"
												class="form-control" placeholder="Your Contact No..." ng-change="setFlag1()">
											<p ng-show="errorNumber1 == 1" style="color: red;">{{msgNumber1}}</p>
                                                </div>

                                                <!--  <div class="form-group mb-4">
                                                    <label for="message1" class="sr-only">Message1</label>
                                                    <textarea  class="form-control form-control-lg border-0 shadow-none h-120" ng-model="message1" id="message1" name="message"placeholder="Hello, I'm interested in {{projectDetail.projectTitle}}"></textarea>
                                                </div>  -->
												
									 <div class="g-recaptcha"  id="recaptchaB" ></div>
												<p ng-show="errorCaptcha1 == 1" style="color: red;">{{msgCaptcha1}}</p>
                                                
                                                <br>
                                                <button type="submit"
                                                    class="btn btn-success btn-lg btn-block rounded"  href="{{projectDetail.projectPDF}}" target="_blank" ng-disabled="spin == 1"><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i>
                                                    Submit
                                                </button>
                                                </div>
                                                <div class="row">
										<div class="col-md-8 text-left">
											<strong ng-show="clientSubmitSuccess1 == 1" style="color: green;"><span class="fa fa-check-circle"></span> {{successMsg1}}</strong>
											<strong ng-show="clientSubmitError1 == 1" style="color: red;"><span class="fa fa-times-circle"></span> {{errorMsg1}}</strong>
										</div>
									</div>
											</div>
                                    </form>
			</div>
			
		</div>
	</div>
	</div>
</div>
