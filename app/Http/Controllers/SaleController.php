<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

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
		return view('sales.productform');
	}

}