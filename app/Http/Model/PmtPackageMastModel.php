<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class PmtPackageMastModel extends Model {

	//pmt_package_mast

	protected $table='pmt_package_mast';
	protected $fillable = [
	  'package_mast_id' ,
	  'pmt_mast_id' ,
	  'pmt_product_set_id' ,
	  'pdmodel_code' ,
	  'pdsize_code' ,
	  'pdmodel_desc' ,
	  'pdsize_desc' ,
	  'total_price_amt' ,
	  'special1_price_type' ,
	  'special1_disc_amt' ,
	  'special1_price_amt' ,
	  'special2_price_type' ,
	  'special2_disc_amt1' ,
	  'special2_disc_amt2' ,
	  'special2_price_amt' ,
	  'rec_status' ,
	  'updated_by' ,
	  'updated_at' ,
	  'created_by' ,
	  'created_at' 
	 ];

}
