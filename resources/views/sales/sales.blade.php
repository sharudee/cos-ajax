@extends('include.index')
@section('title_page') Sales - @stop

@section('content')
	
	<div class="col-md-12">
		<h1><i class="fa fa-list"></i> Sales</h1>
		<a href="#NewPo" rel="newpo" class="btn btn-lg btn-primary"><i class="fa fa-plus-square-o"></i> Add Sales</a>
		<div class="col-md-12 top40">
			<div id="ajaxTable" class="table-responsive">

				<table class="table solsoTable  table-bordered top20">
					<thead>
						<tr>
							<th>ID</th>
							<th>Doc No</th>
							<th>Doc Date</th>
							<th>Customer Name</th>
							<th>Amount</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href="#">P0115120001</a></td>
							<td>22/12/2015</td>
							<td>คุณสมชาย </td>
							<td>2000</td>
							<td class="col-md-3">
								<a href="#" class="btn btn-sm btn-primary">View Detail</a>
								<a href="#" class="btn btn-sm btn-success">Print</a>
								<a href="#" class="btn btn-sm btn-danger">Edit</a>
							</td>
						</tr>

						<tr>
							<td>2</td>
							<td><a href="#">P0115120002</a></td>
							<td>22/12/2015</td>
							<td>คุณอนันต์ </td>
							<td>1800</td>
							<td class="col-md-3">
								<a href="#" class="btn btn-sm btn-primary">View Detail</a>
								<a href="#" class="btn btn-sm btn-success">Print</a>
								<a href="#" class="btn btn-sm btn-danger">Edit</a>
							</td>
						</tr>

						<tr>
							<td>3</td>
							<td><a href="#">P0115120003</a></td>
							<td>22/12/2015</td>
							<td>คุณประกอบ </td>
							<td>10000</td>
							<td class="col-md-3">
								<a href="#" class="btn btn-sm btn-primary">View Detail</a>
								<a href="#" class="btn btn-sm btn-success">Print </a>
								<a href="#" class="btn btn-sm btn-danger">Edit</a>
							</td>
						</tr>
					</tbody>
				</table> 
			</div> 
 		</div>
	</div>


	<!-- Modal New PO Form -->

	<div class="modal fade pomodal" data-backdrop="static">
		<div class="modal-dialog modal-lg">
			<div class="modal-content" id="pomodal">
				
			</div>
		</div>
	</div>



	<!-- Modal Promotion -->

	<div class="modal fade custmodal" data-backdrop="static">
		<div class="modal-dialog modal-md">
			<div class="modal-content" id="custmodal">
				
			</div>
		</div>
	</div>
	

	<!-- Modal Title Name -->

	<div class="modal fade titlemodal" data-backdrop="static">
		<div class="modal-dialog modal-sm">
			<div class="modal-content" id="titlemodal">
				
			</div>
		</div>
	</div>

	<!-- Modal Province -->

	<div class="modal fade provmodal" data-backdrop="static">
		<div class="modal-dialog modal-sm">
			<div class="modal-content" id="provmodal">
				
			</div>
		</div>
	</div>

	<!-- Modal Post Code -->

	<div class="modal fade postmodal" data-backdrop="static">
		<div class="modal-dialog modal-sm">
			<div class="modal-content" id="postmodal">
				
			</div>
		</div>
	</div>


	<!-- Modal Payment -->

	<div class="modal fade paymodal" data-backdrop="static">
		<div class="modal-dialog modal-md">
			<div class="modal-content" id="paymodal">
				
			</div>
		</div>
	</div>


	<!-- Modal Product -->
	
	<div class="modal fade productmodal" data-backdrop="static">
		<div class="modal-dialog modal-md">
			<div class="modal-content" id="productmodal">
				
			</div>
		</div>
	</div>


@stop