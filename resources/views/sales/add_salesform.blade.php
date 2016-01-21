<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<h4 class="modal-title">New Sales</h4>
</div>
<div class="modal-body">
	<div class="container"> 
				<div class="row form-group">
					<div class="col-sm-1">
						<label>เลขที่</label>
					</div>
					<div class="col-sm-2">
						<input type="text" name="doc_no" id="doc_no" class="form-control input-sm">
					</div>
					<div class="col-sm-1 ">
						<label >วันที่</label>
					</div>

					<div class="col-sm-2">
						<input type="date" name="doc_date" id="doc_date" class="form-control input-sm" value="">
					</div>

					<div class="col-sm-1">
						<label>Promotion</label>
					</div>
					<div class="col-sm-2">
					<div class="input-group ">

						
						<input type="text" name="pmt_no" id="pmt_no" class="form-control input-sm">
						
						<span class="input-group-btn">
						<a  href="#addpmt" rel="addpromotion" class="btn btn-sm btn-primary"><sapn class="glyphicon glyphicon-triangle-bottom"></span></a>
						</sapn>
						

					</div>
					</div>
				</div>

				
				
				<div class="row form-group">
					<div class="col-sm-1">
						<label>ชื่อลูกค้า</label>
					</div>
					
					<div class="col-sm-3">
						<div class="input-group ">

							<input type="text" name="pmt_no" id="pmt_no" class="form-control input-sm">
								<span class="input-group-btn">
								<a  href="#addpmt" rel="addpromotion" class="btn btn-sm btn-primary">
								<sapn class="glyphicon glyphicon-triangle-bottom"></span></a>
								</sapn>
								<input type="text" name="" id="input" class="form-control input-sm">
									
								
						</div>
					</div>	
					
					<div class="col-sm-2">
						<input type="text" name="" id="input" class="form-control input-sm">
					</div>

					
					

					<!-- <div class="input-group ">
					    	
						<div class="col-sm-3 inline-col">
							<input type="text" name="" id="input" class="form-control input-sm">
						</div>
						<div class="col-sm-4 inline-col">
							<input type="text" name="" id="input" class="form-control input-sm">
						</div>


					  </div>-->

					
					  
					
				</div>	

				<div class="row form-group">
					<div class="col-sm-1">
						<label>ที่อยู่</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="" id="input" class="form-control input-sm">
					</div>
					<div class="col-sm-4">
						<input type="text" name="" id="input" class="form-control input-sm">
					</div>

					

				</div>

				<div class="row form-group">
					<div class="col-sm-1">
						<label >จังหวัด</label>
					</div>
					<div class="col-sm-2">
					    	<div class="input-group ">

							<input type="text" name="pmt_no" id="pmt_no" class="form-control input-sm">
								<span class="input-group-btn">
								<a  href="#addpmt" rel="addpromotion" class="btn btn-sm btn-primary">
								<sapn class="glyphicon glyphicon-triangle-bottom"></span></a>
								</sapn>
						</div>		
									
					</div>			
						
						<div class="col-sm-2">
							<div class="input-group ">

							<input type="text" name="pmt_no" id="pmt_no" class="form-control input-sm">
								<span class="input-group-btn">
								<a  href="#addpmt" rel="addpromotion" class="btn btn-sm btn-primary">
								<sapn class="glyphicon glyphicon-triangle-bottom"></span></a>
								</sapn>
							</div>
						</div>


						
					 

					  
					
				</div>	
				
				<div class="row form-group">
					<div class="col-sm-1">
						<label >โทรศัพท์</label>
					</div>

					<div class="col-sm-2">
						<input type="text" name="" id="input" class="form-control input-sm">
					</div>

					<div class="col-sm-1 col-sm-offset-2">
						<label >Email</label>
					</div>

					<div class="col-sm-2">
						<input type="text" name="" id="input" class="form-control input-sm">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-1">
						<label>PO</label>
					</div>
					<div class="col-sm-3">
						<input type="file" name=""  id="input" class="form-control input-sm">
					</div>
					<!--<div class="col-sm-1 col-sm-offset-1">-->
						<!--<a class="btn btn-sm btn-primary" data-toggle="modal" href='#modal-map'>Map</a>
						<div class="modal fade" id="modal-map">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title"> Map </h4>
									</div>
									<div class="modal-body">
										
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										
									</div>
								</div>
							</div>
						</div>-->
					<div class="col-sm-1 col-sm-offset-1">
						<label>GP</label>
					</div>
					<div class="col-sm-1">
						<input type="text" name=""  id="input" class="form-control input-sm">
					</div>
					<div class="col-sm-1">
						<input type="text" name=""  id="input" class="form-control input-sm">
					</div>
					<div class="col-sm-1">
						<input type="text" name=""  id="input" class="form-control input-sm">
					</div>

					</div>

					

					<!--<div class="col-sm-3">
						<input type="file" name="" id="input" class="form-control input-sm">
					</div> -->
				


				</div>


				<input type ="hidden" name="_token"  value="{{csrf_token()}}">

			<!-- </div>
	<!-- <form class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-10">PO No</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="po_no" id="po_no">
		</div>	
	</div>	

	<div class="form-group">
		<label class="col-sm-10">Customer Group</label>
		<div class="col-sm-10">
			<select name="cust_group" id="cust_group" class="form-control" >
				
					<option value="CDS">Central</option>
					<option value="MDS">The Mall</option>
				
			</select>
		</div>	
	</div>	

	<div class="form-group">
		<label class="col-sm-10">Custumer Code</label>
		<div class="col-sm-10">
			<div class="row">
				<div class="col-md-10">
					<input type="text" class="form-control" name="cust_code" id="cust_code">
				</div>
				<div class="col-md-2">
					<a href="#addcust" rel="addcustomer" class="btn btn-block btn-primary">
					<i class="fa fa-plus-square-o"></i>Add</a>
				</div>
			</div>
		</div>	
	</div>	

	<div class="form-group">
		<label class="col-sm-10">Custumer Name</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="cust_name" id="cust_name">
		</div>	
	</div>	

	<div class="form-group">
		<label class="col-sm-10">Scan Barcode</label>
		<div class="col-sm-10">
			<div class="row">
				<div class="col-md-10">
					<input type="text" class="form-control" name="bar_code" id="bar_code">
				</div>
				<div class="col-md-2">
					<a href="#addproduct" rel="addproduct" class="btn btn-block btn-primary">
					<i class="fa fa-plus-square-o"></i>Add</a>
				</div>
			</div>
		</div>	
	</div>-->

	<a href="#addproduct" rel="addproduct" class="btn btn-primary">Add Product </a> 

	<input type="hidden" name="_token" value="{{csrf_token()}}">

	</form>	

	
	<div id="product_table">
		<table class='table table-bordered' id='po_table'>
			<thead>	
				<tr>
					<th>ID</th>
					<th>Product Code</th>
					<th>Product Name</th>
					<th>Qty</th>
					<th>Price</th>
					<th>Amount</th>
					<th>Action</th>
					</tr>
					</thead>		
			<tbody>
				<tr>
					<td colspan=3></td>
					<td><span id='total_qty'></span></td>
					<td></td>
					<td><span id='total_price'></span></td>
					<td></td>
				</tr>
				

			</tbody>
			

			
		</table>

		<!--<table class='table table-bordered'>
			<tr>
					<td colspan=3></td>
					<td><span id='total_qty'></span></td>
					<td><span id='total_price'></span></td>
					<td></td>
			</tr>
		</table>-->
		
	<div class="row form-group">
		<div class="col-sm-2">
			<label>ชำระเงิน</label>
		</div>
		<div class="col-sm-2">
			<div class="input-group ">

			
				<input type="text" name="pmt_no" id="pmt_no" class="form-control input-sm">
						
					<span class="input-group-btn">
					<a  href="#addpmt" rel="addpromotion" class="btn btn-sm btn-primary"><sapn class="glyphicon glyphicon-triangle-bottom"></span></a>
					</sapn>			
			</div>
		</div>

	</div>
	
</div>
<div class="modal-footer">
	<button type="button" id="SubmitOrder" class="btn btn-primary">Submit Order</button>
	<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
</div>
