<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;
use Request;
use Validator;

// Model
use App\Http\Model\Incentive;

class IncentiveController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$data_incentive = Incentive::orderBy('pdmodel_code','asc')->get();

		
		return view('sales.incentive')->with('incentive',$data_incentive);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('sales.incentive_create');
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
			'unique_with'	=> 'ข้อมูลซ้ำ',
			'numeric'	=> 'ต้องเป็นตัวเลขเท่านั้น',
			'max'		=> 'ข้อมูลเกิน :max ตัวอักษร',
			'between'	=> 'ค่าต้องอยู่ระว่าง :min - :max.'
		];


		$rules = array(
			'pdmodel_code'     	=> 'required|unique_with:incentive_mast,start_date|Max:4',
			'start_date'		=> 'required|date|unique_with:incentive_mast,pdmodel_code',
			'end_date'		=> 'required|date',
			'incentive_amt'	=> 'required|between:1,99999',
			
			
		);

		$validator = Validator::make(Request::all(), $rules,$message);

		if ($validator->passes())
		{
			

			$data_entity = array(
				'pdmodel_code' => Request::get('pdmodel_code'),			
				'start_date' => Request::get('start_date'),
				'end_date' => Request::get('end_date'),
				'incentive_amt' => Request::get('incentive_amt'),
				'created_by' => 'admin',
				'updated_by' => 'admin'
			);

			
		
			//Insert data to model Entity
			$add_data = Incentive::create($data_entity);

			//dd($data_entity);
			

			/* **********  Save Data ************ */	


			// Reload Table Data
			$data_incentive = array(
				'incentive' 		=> Incentive::orderBy('pdmodel_code', 'asc')->get(),
				'refresh'	=> true
			);
	
			return view('sales.incentive_table')->with($data_incentive);
			
		}else{
			if( Request::ajax() ) 
			{
				return view('sales.incentive_create')->withErrors($validator)->withInput(Request::all());			
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
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$edit_data = Entity::find($id);

		$data_grp = Custgrp::orderBy('custgrp_code','asc')->get();

		return view('sales.entity_edit')->with([
							'custgrp' 	=> $data_grp ,
							'entity' 		=> $edit_data
							]);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$message = [
			'required'	=> 'กรุณาใส่ข้อมูล',
			'unique'	=> 'ข้อมูลซ้ำ',
			'numeric'	=> 'ต้องเป็นตัวเลขเท่านั้น',
			'max'		=> 'ข้อมูลเกิน :max ตัวอักษร'
		];


		$rules = array(
			'entity_code'     	=> 'required|Max:8',
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

		//dd($rules);

		$validator = Validator::make(Request::all(), $rules,$message);

		//dd(Request::all());
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

			
		
			//Edit data to model Entity
			/*$update = Entity::find($id);
			$update->fill(Input::all());
			$update->save();
			*/
			//$update=Request::all();
			$entity 	=Entity::find($id);
			$entity->update($data_entity);

			//dd($data_entity);
			

			/* **********  Save Data ************ */	


			// Reload Table Data
			$entity = array(
				'entity' 		=> Entity::orderBy('entity_code', 'asc')->get(),
				'refresh'	=> true
			);
	
			return view('sales.entity_table')->with($entity);
			/*return view('sales.entity_edit')->with([
							'custgrp' 	=> $data_grp ,
							'entity' 		=> $entity
							]);
			*/
		}
		else{
			//$edit_data = Entity::find($id);
			//$edit_data=Request::all();
			//dd($edit_data);
			
			//dd($data_entity);

			$edit_data = array(
				'entity_code' => Request::input('entity_code'),			
				'entity_tname' => Request::get('entity_tname'),
				'entity_ename' => Request::get('entity_ename'),
				'cust_grp' => Request::get('cust_grp'),
				'tax_rate' => Request::get('tax_rate'),
				'ent_ctrl' => Request::get('ent_ctrl'),
				'cos_no' => Request::get('cos_no'),
				'dsgrp_type' => Request::get('dsgrp_type'),
				'sale_type' => Request::get('sale_type'),
				'ret_type' => Request::get('ret_type'),
				//'created_by' => 'admin',
				//'updated_by' => 'admin'
			);

			//dd($edit_data);

			$data_grp = Custgrp::orderBy('custgrp_code','asc')->get();
			if( Request::ajax() ) 
			{
				
				/*return view('sales.entity_edit')->with([
							'custgrp' 	=> $data_grp, 
							'entity' 		=> $edit_data
							]) ->withErrors($validator)->withInput(Request::all());				
				*/
				//return view('sales.entity_edit')->withErrors($validator)->withInput(Request::all());
				return view('sales.entity_edit')->withErrors($validator)->with([
							'custgrp' 	=> $data_grp, 
							'entity' 		=> $edit_data
							]);
			}

			return 0;
		}
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$delete=Entity::where('id',$id)->delete();

		$data_entity = array(
				'entity' 		=> Entity::orderBy('entity_code', 'asc')->get(),
				'refresh'	=> true
			);
	
			return view('sales.entity_table')->with($data_entity);
	}

}
