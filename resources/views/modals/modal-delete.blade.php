<!--
/** 
  * === SETTINGS MODAL ===
  * add solsoDeleteModal in button ID
*/
-->
<div class="modal fade" id="solsoDeleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				 <h4 class="modal-title">Delete dialog</h4>
			</div>
			<div class="modal-body">
				<p>You are about to delete this item this procedure is irreversible !</p>
            				<p>Do you want to proceed ? <p>

			</div>
			<div class="modal-footer">
				
				{!! Form::open(array('id' => 'solsoDeleteForm' )) !!} 
					
					<button type="button" class="btn btn-primary" data-dismiss="modal"> NO</button>
					<input type ="hidden" name="_token"  value="{{csrf_token()}}"> 
					<button class="btn btn-danger solsoDelete" id="confirm" data-message-title="Delete notification" data-message-success="Data was deleted" data-message-error="Validation error messages" >YES</button>
					
				{!! Form::close() !!} 
			</div>
		</div>
	</div>
</div>
