<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class PmtDiscPmDenyModel extends Model {

	//pmt_disc_premium_deny

	protected $table='pmt_disc_premium_deny';
	protected $fillable = [
	  'disc_premium_deny_id' ,
	  'pmt_mast_id' ,
	  'pdsize_code' ,
	  'discount_type' ,
	  'discount_amt' ,
	  'rec_status' ,
	  'updated_by' ,
	  'updated_at' ,
	  'created_by' ,
	  'created_at' 
	 ];
}
