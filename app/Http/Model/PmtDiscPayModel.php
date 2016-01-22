<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class PmtDiscPayModel extends Model {

	protected $table='pmt_disc_payment_rate';
	protected $fillable = [
		  'disc_pay_rate_id' ,
		  'pmt_mast_id' ,
		  'transaction_type' ,
		  'purchase_rate_amt' ,
		  'discount_type' ,
		  'discount_amt' ,
		  'rec_status' ,
		  'updated_by' ,
		  'updated_at' ,
		  'created_by' ,
		  'created_at' 
	 ];

}
