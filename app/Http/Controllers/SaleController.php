<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use DB;
use App\Http\Model\Custgrp;
use App\Http\Model\Titlemast;
use App\Http\Model\Provmast;
use App\Http\Model\Postmast;
use App\Http\Model\PmtMastModel;
use App\Http\Model\PmtTransMastModel;

class SaleController extends Controller {

	public function sales()
	{
		//$cust_group = DB::table('customers')->groupBy('CustGroup')->get(['CustGroup']);
		//dd($cust_group);
		//return view('pages.addpoform')->with('cust_group',$cust_group);
		return view('sales.sales');
	}

	public function salesform()
	{
		//$cust_group = DB::table('customers')->groupBy('CustGroup')->get(['CustGroup']);
		//dd($cust_group);
		//return view('pages.addpoform')->with('cust_group',$cust_group);
		return view('sales.add_salesform');
	}

	public function productform()
	{
		//$cust_group = DB::table('customers')->groupBy('CustGroup')->get(['CustGroup']);
		//dd($cust_group);
		//return view('pages.addpoform')->with('cust_group',$cust_group);
		return view('sales.salesproductform');
	}

	public function salespromotionform($pdate)
	{
		$data_pmt = DB::table('pmt_mast')->join('pmt_consignee', function($join)
				        {
				            $join->on('pmt_mast.pmt_mast_id', '=', 'pmt_consignee.pmt_mast_id')->where('pmt_consignee.entity_code', '>', 'CXXXX')->where('pmt_mast.start_date','<=',$pdate)->where('pmt_mast.end_date','>=',$pdate);
				        })->get();
		dd($data_pmt);
		//return view('pages.addpoform')->with('cust_group',$cust_group);
		return view('sales.salespromotionform');
	}

	public function salestitleform()
	{
		$data_title = Titlemast::orderBy('title_name','asc')->get();
		return view('sales.salestitleform')->with('title',$data_title);
	}

	public function salespostform($prov)
	{
		
		$data_post = POstmast::where('prov_code',$prov)->orderBy('post_code','asc')->get();
		return view('sales.salespostform')->with('post',$data_post);
	}

	public function salesprovform()
	{
		$data_prov = Provmast::orderBy('prov_name','asc')->get();
		return view('sales.salesprovform')->with('prov',$data_prov);
	}

	public function salespayform()
	{
		$data_pay = PmtTransMastModel::where('pmt_group_code','PAYMENT')->orderBy('transaction_code','asc')->get();
		return view('sales.salespayform')->with('pay',$data_pay);
	}


	

}
