 <div class="solso-sidebar">
	<div id="grey-sidebar" class="list-group">
		<a href="#" class="list-group-item active">
			<div class="input-group">
				<p><i class="fa fa-university"> เซ็นทรัล ชิดลม</i></p>
				<p><i class="fa fa-user">  Admin</i></p>	
			</div>	  
		</a>

		  <ul class="nav" id="side-menu">
                       
	                        <li>
	                            <a href="#"><i class="fa fa-bars"></i> Master Data<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <li>
	                                    <a href="{{URL::to('entity')}}">รหัสลูกค้า (Entity)</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('docmast')}}">รหัสเอกสาร</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('whmast')}}">รหัสคลังสินค้า</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('commission')}}">กำหนดข้อมูล Commission</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('incentive')}}">กำหนดข้อมูล Incentive</a>
	                                </li>
	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li>

	                         <li>
	                            <a href="#"><i class="fa fa-shopping-cart"></i> Promotion Data<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <!--<li>
	                                    <a href="{{URL::to('sales/promotion')}}">Promotion</a>
	                                </li>-->
	                                <li>
	                                    <a href="{{URL::to('sales/pmtmast')}}">Promotion</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('sales/promotioncust')}}">Consignee</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('sales/promotionprod')}}">Product</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('sales/promotiondisc')}}">Discount</a>
	                                </li>
	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li> 

	                        <li>
	                            <a href="#"><i class="fa fa-female"></i> Customer<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <li>
	                                    <a href="{{URL::to('sales/addcustomer')}}">ข้อมูลลูกค้า</a>
	                                </li>
	                                
	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li>

	                        <li>
	                            <a href="#"><i class="fa fa-th-list"></i> Transaction<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <li>
	                                    <a href="{{URL::to('sales')}}">บันทึกขายสินค้า</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('sales/addremand')}}">ส่งคืนสินค้า</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('sales/addcustorder')}}">สั่งสินค้า</a>
	                                </li>
	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li>
	                        <li>
	                            <a href="#"><i class="fa fa-money"></i> Commission<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <li>
	                                    <a href="{{URL::to('pc')}}">บันทึกข้อมูลพนักงาน</a>
	                                </li>
	                                <li>
	                                    <a href="{{URL::to('sales/addpctime')}}">บันทึกเวลาทำงาน</a>
	                                </li>
	                                <!--<li>
	                                    <a href="#">.. <span class="fa arrow"></span></a>
	                                    <ul class="nav nav-third-level">
	                                        <li>
	                                            <a href="#">Third Level Item</a>
	                                        </li>
	                                        <li>
	                                            <a href="#">Third Level Item</a>
	                                        </li>
	                                        <li>
	                                            <a href="#">Third Level Item</a>
	                                        </li>
	                                        <li>
	                                            <a href="#">Third Level Item</a>
	                                        </li>
	                                    </ul> -->
	                                    <!-- /.nav-third-level -->
	                                <!--</li> --> 
	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li>
	                         <li>
	                            <a href="#"><i class="fa fa-file-text"></i> Report<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <li>
	                                    <a href="#">รายงานการขาย</a>
	                                </li>
	                                <li>
	                                    <a href="#">รายงานสินค้า</a>
	                                </li>


	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li>

	                         <li>
	                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Stock Management<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
	                                <li>
	                                    <a href="#">Stock Balance</a>
	                                </li>
	                                <li>
	                                    <a href="#">Stock Movement</a>
	                                </li>


	                            </ul>
	                            <!-- /.nav-second-level -->
	                        </li>
                        
                    	</ul>
	</div>
</div>

