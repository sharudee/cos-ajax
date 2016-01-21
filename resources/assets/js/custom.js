/* === SIDEBAR === */
$('.toogle').on('click', function() {
	$('.body').toggleClass('slide');
	$('.sidebar').toggleClass('show');
	$('.toogle i').toggleClass('fa-chevron-left fa-chevron-right');
});
/* === END SIDEBAR === */	



/*====JQuery DataTable Plugin===*/
$('.solsoTable').dataTable();


/* === USE MODALS === */
$(document).on('click', '.solsoShowModal', function(){
	var modalTitle = $(this).attr('data-modal-title');
	
	$.ajax({
		url:$(this).attr('data-href'),
		dataType: 'html',
		success:function(data) {
			$('.solsoModalTitle').text(modalTitle.toString());
			//$('.solsoModalTitle').html(modalTitle)
			$('.solsoShowForm').html(data);
		}
	});
});




/* ==== Event Submit Client Form ===*/
$( document ).on('click', '.solsoSave', function(e){
	e.preventDefault();
	var solsoSelector 	= $(this);
	var solsoFormAction   = $('.solsoForm').attr('action');
	var solsoFormMethod = $('.solsoForm').attr('method');
	var solsoFormData	= $('.solsoForm').serialize();
	//var name = $('.solsoForm').attr('name').val();
	//alert(solsoFormData);

	$.ajax({
		url: solsoFormAction,
		type: solsoFormMethod,
		data: solsoFormData,
		cache: 	false,
		dataType: 'html',
		success:function(data) {
			if (data == 0) {
				console.log('error');
			}else{
				if ($(data).filter('table.solsoRefresh').length == 1) {
					//alert("OK");
					$('#solsoCrudModal').modal('hide'); // ปิด modal
					$('#ajaxTable').html(data);
					$('#countClients').text( $('.solsoTable').attr('data-all') ); // นับจำนวน Record ในตารางใหม่
					$.growl.notice({ 
						title: solsoSelector.attr('data-message-title'), 
					 	message: solsoSelector.attr('data-message-success') 
					});
				}else {
					$('.solsoShowForm').html(data);
					$.growl.error({ 
						title: solsoSelector.attr('data-message-title'), 
					 	message: solsoSelector.attr('data-message-error') 
					});
				}

				
			}
		}
	});
});


/* ==== Event Delete data ===*/
$( document ).on('click', '.solsoDelete', function(e){
	e.preventDefault();

	var solsoSelector 	= $(this);

	var url = $('.solsoConfirm').attr('data-href');
	//$(id).submit();
	//$.ajax({
	var token = $('input[name="_token"]').val();

	var id = $('.solsoConfirm').data("id");
	var solsoFormData	= $('.solsoForm').serialize();
        	

	$.ajax(
	        {
	            url: url,
	            type: 'DELETE',
	            dataType: "html",
	            data: {
	              "_token": token,
	                "id": id,
	                "table_data" : solsoFormData,
	              

	            },
	            success: function (table_data)
	            {
	                //console.log("it Work");
	                	
		                	console.log(table_data);
			            	if ($(table_data).filter('table.solsoRefresh').length == 1) {
							//alert("OK");
				
					$('#solsoDeleteModal').modal('hide');
					$('#ajaxTable').html(table_data);
					$('#countClients').text( $('.solsoTable').attr('data-all') ); // นับจำนวน Record ในตารางใหม่
					$.growl.notice({ 
						title: solsoSelector.attr('data-message-title'), 
					 	message: solsoSelector.attr('data-message-success') 
					});
		 		}else {
					//$('.solsoShowForm').html(data);
					$.growl.error({ 
						title: solsoSelector.attr('data-message-title'), 
					 	message: solsoSelector.attr('data-message-error') 
					});
				}
			
	            }
	        });

        		//console.log("It failed");

	
});



$( document ).on('click', '.solsoEdit', function(e){
	e.preventDefault();
	//var solsoSelector 	= $('.solsoEdit');
	var solsoSelector 	= $(this);
	var solsoFormAction   = $('.solsoForm').attr('action');
	//var solsoFormMethod = $('.solsoForm').attr('method');
	var solsoFormData	= $('.solsoForm').serialize();
	var id 			= $('.solsoForm').data("id");	
	var token = $('input[name="_token"]').val();
	//var entity
	//var name = $('.solsoForm').attr('name').val();
	//alert(solsoSelector);
	//alert(solsoFormAction);
	//alert(solsoFormData);

	$.ajax({
		url: solsoFormAction,
		type: 'PUT',
		data: solsoFormData,
	              

	            
		cache: 	false,
		dataType: 'html',
		success:function(data) {
			/*if (data == 0) {
				console.log('error');
			}else{*/
				if ($(data).filter('table.solsoRefresh').length == 1) {
					//alert("OK");
					$('#solsoCrudModal').modal('hide'); // ปิด modal
					$('#ajaxTable').html(data);
					$('#countClients').text( $('.solsoTable').attr('data-all') ); // นับจำนวน Record ในตารางใหม่
					$.growl.notice({ 
						title: solsoSelector.attr('data-message-title'), 
					 	message: solsoSelector.attr('data-message-success') 
					});
				}else {
					$('.solsoShowForm').html(data);
					$.growl.error({ 
						title: solsoSelector.attr('data-message-title'), 
					 	message: solsoSelector.attr('data-message-error') 
					});
				}

				
			//}
		}
	});
});



