<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;


use Request;
use Validator;
use Carbon;

// Model
use App\Http\Model\Pcwork;
use App\Http\Model\Pcmast;

class PcworkController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($emp_code)
	{
		$data_pc = Pcwork::where('cust_code','CXXXX')->where('emp_code',$emp_code)->orderBy('work_date','asc')->get();

		$pc = Pcmast::where('cust_code','CXXXX')->where('emp_code',$emp_code)->get(['emp_name']);
		//dd($pc);
		
		return view('sales.pcwork')->with(array('pcwork'=>$data_pc,
							'emp_code'=>$emp_code
							));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create($emp_code)
	{
		return view('sales.pcwork_create')->with('emp_code',$emp_code);
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
			'numeric'	=> 'ต้องเป็นตัวเลขเท่านั้น',
			'max'		=> 'ข้อมูลเกิน :max ตัวอักษร',
			'unique_with'	=> 'มีการ Gen ข้อมูลไปแล้ว'

		];


		$rules = array(
			'year'		=> 'required|unique_with:cos_pcwork,month,emp_code|max:4|',
			'month'	     	=> 'required|max:2',
				
			
		);

		$validator = Validator::make(Request::all(), $rules,$message);

		if ($validator->passes())
		{
			
			$info = cal_days_in_month( CAL_GREGORIAN , Request::get('month') , Request::get('year') ) ;

			for($i=1;$i<=$info;$i++)
			{

				$data_pc = array(
					'year' => Request::get('year'),
					'month' => Request::get('month'),
					'cust_code' => 'CXXXX',
					'emp_code' => Request::get('emp_code'),
					'work_date' => Request::get('year').'-'. Request::get('month') . '-' . $i ,
					'work_type' => '1',
					'pc_type' => 'P',			
					'created_by' => 'admin',
					'updated_by' => 'admin'
				);

				
			
				//Insert data to model Entity
				$add_data = Pcwork::create($data_pc);
			}
			//dd($data_entity);
			

			/* **********  Save Data ************ */	


			// Reload Table Data
			$data_pc = array(
				'pcwork' 		=> Pcwork::where('cust_code','CXXXX')->where('emp_code', Request::get('emp_code'))->orderBy('work_date', 'asc')->get(),
				'refresh'		=> true
			);
	
			return view('sales.pcwork_table')->with($data_pc);
			
		}else{
			if( Request::ajax() ) 
			{
				
				return view('sales.pcwork_create')->withErrors($validator)->withInput(Request::all())->with('emp_code',Request::get('emp_code'));				
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
		$edit_data = Pcwork::find($id);

		return view('sales.pcwork_edit')->with('pcwork',$edit_data);
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
			'emp_code'	     	=> 'required|Max:6',
			'work_date'		=> 'required',
			
		);

		$validator = Validator::make(Request::all(), $rules,$message);

		if ($validator->passes())
		{
			
			
			$data_pc = array(
				'emp_code' => Request::get('emp_code'),			
				'work_date' => Request::get('work_date'),
				'work_type' => Request::get('work_type'),
				'pc_type' => Request::get('pc_type'),
				'created_by' => 'admin',
				'updated_by' => 'admin'
			);


			$pc 	=Pcwork::find($id);
			$pc->update($data_pc);

			//dd($data_entity);
			

			/* **********  Save Data ************ */	


			// Reload Table Data
			$data_pc = array(
				'pcwork' 		=> Pcwork::where('cust_code','CXXXX')->where('emp_code', Request::get('emp_code'))->orderBy('work_date', 'asc')->get(),
				'refresh'		=> true
			);
	
			return view('sales.pcwork_table')->with($data_pc);
			

		}
		else{
			

			$edit_data = array(
				'emp_code' => Request::get('emp_code'),			
				'work_date' => Request::get('work_date'),
				'work_type' => Request::get('work_type'),
				'pc_type' => Request::get('pc_type'),
			);

			//dd($edit_data);

			if( Request::ajax() ) 
			{

				return view('sales.pcwork_edit')->withErrors($validator)->with('pcwork' ,$edit_data);
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
		//
	}

}
