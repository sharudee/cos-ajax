<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;

use Request;
use Validator;

// Model
use App\Http\Model\Entity;

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
		return view('sales.entity_create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		
		
		$rules = array(
			'entity_code'     	=> 'required',
			'entity_tname'		=> 'required',
			'cos_no'		=> 'required',
			'tax_rate'		=> 'required',
			'cust_grp'		=> 'required',
			'dsgrp_type'	=> 'required',
			'sale_type'	=> 'required',
			
		);

		$validator = Validator::make(Request::all(), $rules);

		if ($validator->passes())
		{
			$store	= new Entity;
			$store->fill(Request::all());
			$store->save();

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
		//
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
		//
	}

}
