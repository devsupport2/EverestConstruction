<div class="modal fade" id="bookingStatus"  tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Booking status list</h5>
			<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">x</span>
				</button>
			</div>
			<table class="table table-hover table-striped">
  <thead>
    <tr>
      
      <th scope="col">Unit Name</th>
      <th scope="col">Floor - <span title="Property Number">P Number</span></th>
      <th scope="col">Project Title</th>
       <th scope="col">Category</th>
      <th scope="col">Sub-category</th>
       <th scope="col">Type of Realestate</th>
      <th scope="col">Booking Status</th>
    

    </tr>
  </thead>
  <tbody>
<tr class="text-center" ng-if="getProperty == ''" >
											<td colspan="8"><span class="label label-default" style="font-size: 15px;">Sorry... No data found.</span></td>
										</tr>
										<tr ng-repeat="item in getProperty | filter:pcategoryid | filter:subcategory" >
											<td>{{item.towerTitle}}</td>
											<td>{{item.floor}} - {{item.propertyTitle}}</td>
											<td>{{item.projectTitle}}</td>
											<td>{{item.realestateTypeName}}</td>
											<td>{{item.subcategoryTitle}}</td>
											<td>{{item.realestateTitle}}</td>
											<td   id="booksts" style="cursor:pointer;cursor:hand;align-items: center;justify-content: center;     display: flex;" ng-style="(item.propertyStatus == 'Booked') && {'background-color':'#8eef88c4'} || (item.propertyStatus == 'Blocked') && {'background-color':'#f7636385'}">{{item.propertyStatus}}</td>
											
										</tr> 
   
  </tbody>
</table>
			
		</div>
	</div>
</div>
