<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;

use Request;
use Validator;

// Model
use App\Http\Model\Entity;
use App\Http\Model\Custgrp;


class EntityController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//return "ok";
		//return view('sales.entity');
		$data_entity = Entity::orderBy('entity_code','asc')->get();

		
		return view('sales.entity')->with('entity',$data_entity);
							
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$data_grp = Custgrp::orderBy('custgrp_code','asc')->get();

		return view('sales.entity_create')->with('custgrp',$data_grp);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		
		$message = [
			'required'	=> 'กรุณาใส่ข้อมูล',
			'unique'	=> 'ข้อมูลซ้ำ',
			'numeric'	=> 'ต้องเป็นตัวเลขเท่านั้น',
			'max'		=> 'ข้อมูลเกิน :max ตัวอักษร'
		];


		$rules = array(
			'entity_code'     	=> 'required|unique:entity|Max:8',
			'entity_tname'		=> 'required|Max:50',
			'entity_ename'		=> 'Max:50',
			'ent_ctrl'		=> 'Max:8',
			'cos_no'		=> 'required|Max:2',
			'tax_rate'		=> 'required|Numeric',
			'cust_grp'		=> 'required|Max:4',
			'dsgrp_type'		=> 'required',
			'sale_type'		=> 'required|Max:8',
			'ret_type'		=> 'required|Max:8'
			
		);

		$validator = Validator::make(Request::all(), $rules,$message);

		if ($validator->passes())
		{
			
			/* กรณี Save ทุก Field จาก Form 
 			$store	= new Entity;
			
			$store->fill(Request::all());
			$store->save();
			*/

			/* **********  Save Data ************ */	

			
			//$modified = date('Y-m-d H:i:s')

			$data_entity = array(
				'entity_code' => Request::get('entity_code'),			
				'entity_tname' => Request::get('entity_tname'),
				'entity_ename' => Request::get('entity_ename'),
				'cust_grp' => Request::get('cust_grp'),
				'tax_rate' => Request::get('tax_rate'),
				'ent_ctrl' => Request::get('ent_ctrl'),
				'cos_no' => Request::get('cos_no'),
				'dsgrp_type' => Request::get('dsgrp_type'),
				'sale_type' => Request::get('sale_type'),
				'ret_type' => Request::get('ret_type'),
				'created_by' => 'admin',
				'updated_by' => 'admin'
			);

			
		
			//Insert data to model Entity
			$add_data = Entity::create($data_entity);

			//dd($data_entity);
			

			/* **********  Save Data ************ */	


			// Reload Table Data
			$data_entity = array(
				'entity' 		=> Entity::orderBy('entity_code', 'asc')->get(),
				'refresh'	=> true
			);
	
			return view('sales.entity_table')->with($data_entity);
			
		}else{
			if( Request::ajax() ) 
			{
				
				return view('sales.entity_create')->withErrors($validator)->withInput(Request::all());				
			}

			return 0;
		}

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$entity = Entity::find($id);

		return view('sales.entity_show')->with('entity',$entity); 
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$data_grp = Custgrp::orderBy('custgrp_code','asc')->get();

		return view('sales.entity_edit')->with('custgrp',$data_grp);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		/*$delete = Entity::find($id);
		$delete->delete();
		*/
		$delete=Entity::where('id',$id)->delete();

		$data_entity = array(
				'entity' 		=> Entity::orderBy('entity_code', 'asc')->get(),
				'refresh'	=> true
			);
	
			return view('sales.entity_table')->with($data_entity);
	}



}
