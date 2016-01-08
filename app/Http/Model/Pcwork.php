<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Pcwork extends Model {

	protected $table='cos_pcwork';
	protected $fillable = [
	 	'year',
	 	'month',
	 	'cust_code'
	 	'emp_code',
	 	'work_date',
	 	'pc_type',
	 	'time_start',
	 	'time_end',
	 	'created_by',
	 	'updated_by'
	 ];

}
