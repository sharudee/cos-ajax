<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;

use Request;

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

		$sql = "select ifnull(substr(max(doc_no),-4,4),0)+1 no  from cos_invmast where doc_no like '" . $doc_head . "%'";
		$data = DB::select($sql);
		$doc_no = $doc_head . str_pad($data[0]->no,4,'0',STR_PAD_LEFT);
		//dd($data[0]->no);
		return view('sales.add_salesform')->with('doc_no',$doc_no);
	}

	public function productform($pmt_no)
	{
		$sql = "select b.pdmodel_code , b.pdmodel_desc , b.pdsize_code , b.pdsize_desc, b.special1_price_amt , b.special2_price_amt from pmt_mast a , pmt_package_mast b where a.pmt_mast_id=b.pmt_mast_id and a.pmt_no='" . $pmt_no . "'";
		$data = DB::select($sql); 

		return view('sales.salesproductform')->with('prod',$data);
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
		
		$data_post = Postmast::where('prov_code',$prov)->orderBy('post_code','asc')->get();
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


	public function  submitOrder()
	{
		if(!empty(Request::input('doc_no')))
		{	
			$data_entity = Entity::where('entity_code','CXXXX')->get(['entity_tname','cos_no','sale_type','tax_rate']);
			
			$cos_entity = "B10";
			$doc_code = "PO";
			$cust_name = $data_entity[0]->entity_tname;
			$cos_no = $data_entity[0]->cos_no;
			$tax_rate = $data_entity[0]->tax_rate;

			$ddate = date_create_from_format('d/m/Y', Request::input('doc_date'));
			$doc_date = date_format($ddate, 'Y-m-d');

			$rdate = date_create_from_format('d/m/Y', Request::input('req_date'));
			$req_date = date_format($rdate, 'Y-m-d');

			$data_cos_mast = array(
				'cos_entity'	=> $cos_entity,
				'cos_no'	=> $cos_no,
				'doc_code'	=> $doc_code,
				'doc_no' 	=> Request::input('doc_no'),
				'doc_date' 	=> $doc_date,  
				'req_date' 	=> $req_date,   
				'pmt_no' 	=> Request::input('pmt_no'), 
				'cust_code'	=> 'CXXXX',
				'cust_name'	=> $cust_name,
				'ship_titlename'	=> Request::input('ship_titlename'),
				'ship_custname'	=> Request::input('ship_custname'),
				'ship_custsurname'	=> Request::input('ship_custsurname'), 
				'ship_address1'	=> Request::input('ship_address1'),
				'ship_address2'	=> Request::input('ship_address2'),
				'prov_code'	=> Request::input('prov_code'),
				'prov_name'	=> Request::input('prov_name'),
				'post_code'	=> Request::input('post_code'),
				'ship_tel'		=> Request::input('tel'),
				'email_address'	=> Request::input('email_address'),
				'po_file'	=> Request::input('po_file'),
				'gp1'		=> Request::input('gp1'),
				'gp2'		=> Request::input('gp2'),
				'gp3'		=> Request::input('gp3'),
				'pay_code'	=> Request::input('pay_code'),
				'pay_name'	=> Request::input('pay_name'),
				'vat_rate'	=> $tax_rate,
				'doc_status'	=> 'PAL',
				'created_by'		=> 'admin',
				'created_at'	=> date('Y-m-d H:i:s')
			);

			//Insert to po_head
			$cos_invmast_insert = DB::table('cos_invmast')->insertGetId($data_cos_mast);


			//Insert to po_details

			if($cos_invmast_insert)
			{
				//à¸£à¸±à¸šà¸„à¹ˆà¸²à¸•à¸±à¸§à¹à¸›à¸£à¸²à¸ˆà¸²à¸ JQuery à¹€à¸›à¹‡à¸™à¸•à¸±à¸§à¹à¸›à¸£à¸² Array
				$getprodcode = Request::input('procode');
				$getprodname = Request::input('proname');
				$getqty = Request::input('qty');
				$getprice = Request::input('price');
				$getsp_size = Request::input('sp_size');
				$getsp_size_desc = Request::input('sp_size_desc');

				$count_item = count($getprodcode);

				//dd($count_item);

				// à¸–à¹‰à¸²à¸—à¸µà¸à¸²à¸£à¸šà¸±à¸™à¸—à¸¶à¸à¸£à¸²à¸¢à¸à¸²à¸£à¸ªà¸´à¸™à¸„à¹‰à¸²
				if($count_item)
				{
					$item = 1;
					for($i=0;$i<$count_item;$i++)
					{
						$data_cos_det = array(

							'cos_invmast_id'	=> $cos_invmast_insert,
							'cos_entity'		=> $cos_entity,
							'cos_no'		=> $cos_no,
							'doc_code'		=> $doc_code,
							'doc_no'		=> Request::input('doc_no'),
							'item'			=> $item,
							'prod_code'		=> $getprodcode[$i],
							'prod_name' 		=> $getprodname[$i],
							'qty'			=> $getqty[$i],
							'sale_price'		=> $getprice[$i],
							'amt'			=> $getqty[$i] * $getprice[$i],
							'vat_rate'		=> $tax_rate,
							'sp_size'		=> $getsp_size[$i],
							'sp_size_desc'	=> $getsp_size_desc[$i],
							'created_by'		=> 'admin',
							'created_at'		=> date('Y-m-d H:i:s')

						);

						DB::table('cos_invdet')->insert($data_cos_det);

						$item ++;

					}

					return "Insert_Success";
				}



			}
		}


	}

}
