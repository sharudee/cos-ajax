<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class PmtGroupMastModel extends Model {

	//pmt_disc_premium_deny

	protected $table='pmt_group_mast';
	protected $fillable = [
	  'pmt_group_code' ,
	  'pmt_group_code_name' ,
	  'rec_status' ,
	  'updated_by' ,
	  'updated_at' ,
	  'created_by' ,
	  'created_at' 
	 ];
}
