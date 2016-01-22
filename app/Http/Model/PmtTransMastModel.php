<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class PmtTransMastModel extends Model {

	//pmt_transaction_mast

	protected $table='pmt_transaction_mast';
	protected $fillable = [
	  'transaction_code' ,
	  'pmt_group_code' ,
	  'trnsaction_name' ,
	  'rec_status' ,
	  'updated_by' ,
	  'updated_at' ,
	  'created_by' ,
	  'created_at' 
	 ];

}
