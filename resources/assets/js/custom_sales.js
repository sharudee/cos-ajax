$(function(){
	// Event newpo Link
	$("a[rel=newpo]").click(function(){
		$.get('salesform',function(data){
			$("#pomodal").html(data);
			// เปิด modal
			$(".pomodal").modal('show');
		});
	});


	// Event Add Customer Form
	/*$('body').on('click','a[rel=addcustomer]',function(){
		$.get('customerform/'+$('select#cust_group').val(),function(data){
			$("#custmodal").html(data);
			// เปิด modal
			$(".custmodal").modal('show');
		});
	});*/

	// Event Add Promotion Form
	$('body').on('click','a[rel=addpromotion]',function(){
		var idate = $('input#doc_date').val();
		var darr = idate.split('/');
		var vdate = darr[2]+'-'+darr[1]+'-'+darr[0];
		$.get('salespromotionform/'+vdate,function(data){
			$("#custmodal").html(data);
			// เปิด modal
			$(".custmodal").modal('show');
		});
	});

	$('body').on('change','input[name="radpmt"]', function() {
	  	var pmt_no = $('input[name=radpmt]:checked').val();
		var gp = $('input[name=radpmt]:checked').attr('data-gp');
		$('input[name=pmt_no]').val(pmt_no);
		$('input[name=gp1]').val(gp);
		$(".custmodal").modal('hide');
	});	

	// Event submit promotion
	$('body').on('click','button#submitpmt',function(){
		var pmt_no = $('input[name=radpmt]:checked').val();
		var gp = $('input[name=radpmt]:checked').attr('data-gp');
		$('input[name=pmt_no]').val(pmt_no);
		$('input[name=gp1]').val(gp);
		$(".custmodal").modal('hide');
	});


	// Event Add Title Form
	$('body').on('click','a[rel=addtitle]',function(){
		
		$.get('salestitleform',function(data){
			$("#titlemodal").html(data);
			// เปิด modal
			$(".titlemodal").modal('show');


		});
	});


	$('body').on('change','input[name="radtitle"]', function() {
	  //var radioValue = $('input[name="radcus"]:checked').val();        
	  //alert(radioValue); 
	  	var title = $('input[name=radtitle]:checked').val();
		//var cusname = $('input[name=radcus]:checked').attr('data-custname');
		$('input[name=ship_titlename]').val(title);
		$(".titlemodal").modal('hide');
	});	


   	

	// Event submit Title
	$('body').on('click','button#submittitle',function(){
		var title = $('input[name=radtitle]:checked').val();
		//var cusname = $('input[name=radcus]:checked').attr('data-custname');
		$('input[name=ship_titlename]').val(title);
		$(".titlemodal").modal('hide');
	});


	// Event Add Province Form
	$('body').on('click','a[rel=addprov]',function(){
		
		$.get('salesprovform',function(data){
			$("#provmodal").html(data);
			// เปิด modal
			$(".provmodal").modal('show');

		});



	});

	$('body').on('change','input[name="radprov"]', function() {
	 	var provcode = $('input[name=radprov]:checked').val();
		var provname = $('input[name=radprov]:checked').attr('data-provname');
		$('input[name=prov_code]').val(provcode);
		$('input[name=prov_name]').val(provname);
		$(".provmodal").modal('hide');
	});	

	// Event submit Province
	$('body').on('click','button#submitprov',function(){
		var provcode = $('input[name=radprov]:checked').val();
		var provname = $('input[name=radprov]:checked').attr('data-provname');
		$('input[name=prov_code]').val(provcode);
		$('input[name=prov_name]').val(provname);
		$(".provmodal").modal('hide');
	});



	// Event Add Post code Form
	$('body').on('click','a[rel=addpost]',function(){
		
		$.get('salespostform/'+$('input#prov_code').val(),function(data){
			$("#postmodal").html(data);
			// เปิด modal
			$(".postmodal").modal('show');
		});
	});


	$('body').on('change','input[name="radpost"]', function() {
	 	var postcode = $('input[name=radpost]:checked').val();

		$('input[name=post_code]').val(postcode);
		$(".postmodal").modal('hide');
	});


	// Event submit Post Code
	$('body').on('click','button#submitpost',function(){
		var postcode = $('input[name=radpost]:checked').val();

		$('input[name=post_code]').val(postcode);
		$(".postmodal").modal('hide');
	});


	// Event Add Payment Form
	$('body').on('click','a[rel=addpay]',function(){
		
		$.get('salespayform',function(data){
			$("#paymodal").html(data);
			// เปิด modal
			$(".paymodal").modal('show');
		});
	});

	$('body').on('change','input[name="radpay"]', function() {
	  	var paycode = $('input[name=radpay]:checked').val();
		var payname = $('input[name=radpay]:checked').attr('data-payname');

		$('input[name=pay_code]').val(paycode);
		$('input[name=pay_name]').val(payname);
		$(".paymodal").modal('hide');
	});

	// Event submit Payment
	$('body').on('click','button#submitpay',function(){
		var paycode = $('input[name=radpay]:checked').val();
		var payname = $('input[name=radpay]:checked').attr('data-payname');

		$('input[name=pay_code]').val(paycode);
		$('input[name=pay_name]').val(payname);
		$(".paymodal").modal('hide');
	});



	// Event Add Product Form
	$('body').on('click','a[rel=addproduct]',function(){
		$.get('salesproductform/'+$('input#pmt_no').val(),function(data){
			$("#productmodal").html(data);
			// เปิด modal
			$(".productmodal").modal('show');
		});
	});


	// Event Submit Product
	$('body').on('click','button#submitproduct',function(){
		
		var rows;
		var procode = [];
		var proname = [];
		var qty = [];
		var price = [];


		$("input[name='product[]']:checked").each(function ()
		{
			procode.push($(this).val());
			proname.push($(this).attr('data-proname'));
			qty.push($(this).attr('data-qty'));
			price.push($(this).attr('data-price'));
		});

		//alert(JSON.stringify(proname));

		if(procode.length){

			var rowCount = $('#po_table tr').length; // นับจำนวนแถวของตาราง
			var mytable;
			//var i=1;
			table = document.getElementById('po_table');
  			//new_row = table.insertRow(table.rows.length);

			for(rows=1;rows<=procode.length;rows++)
			{
				/*mytable += "<tr>"+
						//"<td>"+((rowCount+rows)-2)+"</td>"+
						"<td>"+i+"</td>"+
						"<td>"+procode[(rows-1)]+"<input type='hidden' name='procode[]' value='"+procode[(rows-1)]+"'></td>"+
						"<td>"+proname[(rows-1)]+"<input type='hidden' name='proname[]' value='"+proname[(rows-1)]+"'></td>"+
						"<td><input type=\"text\" name=\"qty[]\" id=\"qty\" class=\"form-control\" style=\"width: 50px;\" value='"+qty[(rows-1)]+"'></td>"+
						"<td><input type=\"text\" name=\"price[]\" id=\"price\" class=\"form-control\" style=\"width: 100px;\" value='"+price[(rows-1)]+"'></td>"+
						"<td><input type=\"text\" name=\"price[]\" id=\"price\" class=\"form-control\"  style=\"width: 100px;\"value='"+price[(rows-1)]+"'></td>"+
						"<td><div class=\"form-inline\"><div class=\"checkbox\"><label><input type=\"checkbox\" name=\"sp_size\" value=\"\"></label> <input type=\"text\" name=\"sp_size_desc\" id=\"sp_size_desc\" class=\"form-control\"  style=\"width: 50px;\" value=\"\"></div></div></td>"+
						"<td><a href=\"#delete\" rel='pro_delete' class=\"btn btn-sm btn-danger\">Delete</a></td>"+
					        "</tr>"; 
				*/
				new_row = table.insertRow(table.rows.length);
				data = rowCount ;
				new_row.insertCell(0).innerHTML = data;
				data = procode[(rows-1)]+'<input type="hidden" name="procode[]" value="'+procode[(rows-1)]+'">';
				new_row.insertCell(1).innerHTML = data;
				
				data = proname[(rows-1)]+'<input type="hidden" name="proname[]" value="'+proname[(rows-1)]+'">';
				new_row.insertCell(2).innerHTML = data;
				
				data = '<input type="text" name="qty[]" id="qty" class="form-control" style="width: 50px;" data-price="' +price[(rows-1)] +'"value="'+qty[(rows-1)]+'">';
				new_row.insertCell(3).innerHTML = data;
				data = '<input type="text" name="price[]" id="price" class="form-control" style="width: 100px;" value="'+price[(rows-1)]+'">';
				new_row.insertCell(4).innerHTML = data;
				data = '<input type="text" name="amt[]" id="amt" class="form-control" style="width: 100px;" value="'+qty[(rows-1)]*price[(rows-1)]+'">';
				new_row.insertCell(5).innerHTML = data;
				data = '<div class="form-inline"><div class="checkbox"><label><input type="checkbox" name="sp_size" value=""></label> <input type="text" name="sp_size_desc" id="sp_size_desc" class="form-control"  style="width: 50px;" value=""></div></div></td>';
				new_row.insertCell(6).innerHTML = data;
				data = '<a href="#delete" rel="pro_delete" class="btn btn-sm btn-danger">Delete</a>';
				new_row.insertCell(7).innerHTML = data;

				rowCount++;
				//i = i+rows;       
			}

			//new_row.insertCell(0).innerHTML = data;
			//$('#po_table tbody').prepend(mytable);

			// เรียกใช้ฟังก์ชันนับจำนวนรายการและราคารวม
			sum_qty_and_price();
			$(".productmodal").modal('hide');

		}else{
			alert('กรุณาเลือกอย่างน้อย 1 รายการ');
		}
	
	});
	

	$('body').on('change','input[name="qty[]"]', function() {
		var amt = 0;
		$("input[name='qty[]']").each(function (index) {
			var qty = 0;
			var price = parseFloat($(this).attr('data-price'));
			qty = parseInt($(this).val()) || 0;
			
			amt = qty * price;
			alert(qty);
			alert(price);
			alert(amt);
			alert(index);
			var that = this;
			$("input[name='amt[0]']", this).each(function () {
				$(this).val(amt);
			});
			

		});
		
		
		
		
		
	})

	
	// Test Prepend
	// $("body").on("click","a[rel=testprepend]",function(){
	// 	$('#po_table tbody').prepend('<tr><td>xxx</td><td>xxx</td><td>xxx</td><td>xxx</td><td>xxx</td><td>xxx</td></tr>');
	// });
	
	

 
	/*$('body').on("input","input#qty[],input#price[],input#amt[]").keyup(function(){

		var amt = parseFloat($("input[name='qty[]']").val())*parseFloat($("input[name='price[]']").val());
		     
		$("input[name='amt[]']").val(amt);

	});
	*/



	// หาผลรวมของจำนวนชิ้น
	$('body').on("input","input#qty,input#price",function(){

		sum_qty_and_price();
	});

	// ลบรายการออกจากตาราง
	$("body").on("click","a[rel=pro_delete]",function(){
		$(this).parent().parent().remove();
		sum_qty_and_price();
	});


	


	// ฟังก์ชันคำนวนจำนวนชิ้นทั้งหมดและราคาสุทธิ
	function sum_qty_and_price()
	{
		var rows;
		var i;
		var total_qty = 0;
		var total_price = 0;
		var amt = 0;

		var pro_qty = [];
		var pro_price = [];
		var pro_amt = [];
		

		// เก็บจำนวนชิ้นลง array
		$("input[name='qty[]']").each(function ()
		{
			pro_qty.push(parseInt($(this).val()));
		});

		// เก็บราคาแต่ละชิ้นลง array
		$("input[name='price[]']").each(function ()
		{
			pro_price.push(parseInt($(this).val()));

		});

		for(rows=1;rows<=pro_qty.length;rows++)
		{
			
			amt = pro_qty[(rows-1)] * pro_price[(rows-1)];
			pro_amt.push(parseInt(amt));

			//$("input[name='amt[]']")[(rows-1)] = pro_amt[(rows-1)];


			total_qty += pro_qty[(rows-1)];
			total_price += pro_qty[(rows-1)]*pro_price[(rows-1)];
		}

		
		
	

		

		console.log(pro_amt);

		$("span#total_qty").text(total_qty);
		$("span#total_price").text(total_price.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, '$1,'));
	}



	// Event Submit Order
	$('body').on("click",'button#SubmitOrder',function(){

		swal("Record Save!", "บันทึกรายการเรียบร้อย!", "success");
					// ปิด modal
		$(".pomodal").modal('hide');
	});
	/*$('body').on("click",'button#SubmitOrder',function(){

		var po_no = $("input#po_no").val();
		var cust_group = $("select#cust_group").val();
		var cust_code = $("input#cust_code").val();
		var cust_name = $("input#cust_name").val();
		var _token = $("input[name=_token]").val();

		var procode = [];
		$("input[name='procode[]']").each(function ()
		{
			procode.push($(this).val());
		});

		var proname = [];
		$("input[name='proname[]']").each(function ()
		{
			proname.push($(this).val());
		});

		var qty = [];
		$("input[name='qty[]']").each(function ()
		{
			qty.push($(this).val());
		});

		var price = [];

		$("input[name='price[]']").each(function ()
		{
			price.push($(this).val());
		});

		$.ajax({

			beforeSend:function() { 
				// Loading...
			},

			complete:function() {
				// Close Loading...
			},

			url:'submitOrder',
			type:'POST',
			cache:false,
			data:{
				_token:_token,
				po_no:po_no,
				cust_group:cust_group,
				cust_code:cust_code,
				cust_name:cust_name,
				procode:procode,
				proname:proname,
				qty:qty,
				price:price
			},

			success: function(data)
			{
				if(data=="Insert_Success")
				{
					// แสดง popup ด้วย sweet alert
					swal("Record Save!", "บันทึกรายการเรียบร้อย!", "success");
					// ปิด modal
					$(".pomodal").modal('hide');
				}
			},

		},"json");
	});*/

});