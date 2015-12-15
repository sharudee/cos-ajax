<!--
/** 
  * === FORM CREATE ===
  * add solsoForm in form class
*/
-->

{!! Form::open(array('url'=>'entity','role' => 'form','class' => 'solsoForm'))!!}
	<div class="col-sm-12">
	
			<div class="container">
				<div class="row form-group">
					<div class="col-sm-2">
						<label>รหัสลูกค้า</label>
					</div>
					<div class="col-sm-2">
						<input type="text" name="entity_code" id="input" class="form-control required"  >
						{!!$errors->first('entity_code','<p class="error">:message</p>')!!}
					</div>

					<div class="col-sm-2 col-sm-offset-1">
						<label>หมายเลขเครื่อง</label>
					</div>

					<div class="col-sm-2">
						<input type="text" name="cos_no" id="input" class="form-control required">
					</div>
					
				</div>
				
				<div class="row form-group">
					<div class="col-sm-2">
						<label>ชื่อลูกค้า (ไทย)</label>
					</div>
					<div class="col-sm-7">
						<input type="text" name="entity_tname" id="input" class="form-control required">
					</div>
				</div>	
				<div class="row form-group">
					<div class="col-sm-2">
						<label>ชื่อลูกค้า (อังกฤษ)</label>
					</div>
					<div class="col-sm-7">
						<input type="text" name="entity_ename" id="input" class="form-control input-sm">
					</div>
				</div>	

				<div class="row form-group">
					<div class="col-sm-2">
						<label>กลุ่มลูกค้า</label>
					</div>
					<div class="col-sm-2">
						<input type="text" name="cust_grp" id="input" class="form-control required">
						
					
						

					</div>
					<div class="col-sm-2 col-sm-offset-1">
						<label>อัตราภาษี</label>
					</div>

					<div class="col-sm-2">
						<input type="text" name="tax_rate" id="input" class="form-control required">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label>รหัสควบคุม</label>
					</div>
					<div class="col-sm-2">
						<input type="text" name="ent_ctrl" id="input" class="form-control input-sm">
					</div>
					<div class="col-sm-2 col-sm-offset-1">
						<label>ประเภทการ Group Bill</label>
					</div>

					<div class="col-sm-2">
						
							
						        <select class="form-control required" id="select" name="dsgrp_type">
						          <option value="SKU">SKU - ตามรหัสสินค้าลูกค้า</option>
						          <option value="DISC">DISC - ตามส่วนลดลูกค้า + GP ห้าง</option>
						        </select>
						
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label>ประเภทการขาย</label>
					</div>
					<div class="col-sm-2">
						 <select class="form-control required" id="select" name="sale_type">
						          <option value="CO">CO</option>
						          <option value="SO">SO</option>
						  </select>
					</div>
					<div class="col-sm-2 col-sm-offset-1">
						<label>ประเภทรับคืน</label>
					</div>

					<div class="col-sm-2">
						<input type="text" name="" id="input" class="form-control required"  name="ret_type">
					</div>
				</div>

				

			</div>



			<div class="form-group col-md-12">
				<button type="button" class="btn btn-success btn-lg solsoSave" 
				data-message-title="Create notification" 
				data-message-error="Validation error messages" 
				data-message-success="Data was saved">
				<i class="fa fa-save"></i> Save
				</button>
			</div>
	
</div>
	
{!! Form::close()!!}