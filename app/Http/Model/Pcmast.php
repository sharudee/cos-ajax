<?php namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Pcmast extends Model {

	protected $table='cos_pcmast';
	protected $fillable = [
	 	'emp_code',
	 	'emp_name',
	 	'tel',
	 	'email',
	 	'created_by',
	 	'updated_by'
	 ];

}
