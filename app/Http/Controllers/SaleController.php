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
use App\Http\Model\Entity;
use App\Http\Model\Docmast;

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
		$doc_code = DB::table('doc_mast')->where('doc_code', 'PO')->pluck('doc_code');
		$cos_no = DB::table('entity')->where('entity_code', 'CXXXX')->pluck('cos_no');
		
		$doc_head = $doc_code . $cos_no. date('ym');

		$sql = "select ifnull(substr(max(doc_no),-1,4),0)+1 no  from cos_invmast where doc_no like '" . $doc_head . "%'";
		$data = DB::select($sql);
		$doc_no = $doc_head . str_pad($data[0]->no,4,'0',STR_PAD_LEFT);
		//dd($data[0]->no);
		return view('sales.add_salesform')->with('doc_no',$doc_no);
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
		$sql = "select * from pmt_mast , pmt_consignee where pmt_mast.pmt_mast_id = pmt_consignee.pmt_mast_id and pmt_mast.start_date <='" . $pdate . "' and pmt_mast.end_date >='" . $pdate . "' and pmt_consignee.entity_code='CXXXX'";
		
		$data_pmt = DB:: select($sql);
		//dd($data_pmt);
		
		return view('sales.salespromotionform')->with('pmt',$data_pmt);
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
