package tresh;

public class AuctionBid {
	<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"></button>
		<h4 class="modal-title"><strong>�����ϱ�</strong></h4>
	</div>

	<div class="modal-body">
		<h4 class="fs18i"><strong><span id="dvItemname">��︲ �Ϳ��� �ҳ��� ���� LP</span></strong></h4>
		<div class="tableDefault">
			<div id="numBox" style="display:none;position:absolute"></div><table>
				<tbody><tr>
					<th>�Ǹ���</th>
					<td><strong><span id="dvUserid">math0715</span></strong>&nbsp</td>
				</tr>
				<tr class="visible-lg visible-md visible-sm">
					<th>�����Ⱓ</th>
					<!-- <td><span id="dvEddate"></span>����&nbsp;<div id="dvRemain" class="btn btn-blue"></div>&nbsp;<div id="dvExtnAuc" class="btn btn-blue-green" style="display:none;">������������!</div></td> -->
					<td><span id="dvEddate">2023-01-11 21:25:10</span>����&nbsp;<div id="dvRemain" class="btn btn-blue">2�� 7�ð� 28�� 50��</div>&nbsp;<div id="dvExtnAuc" class="fcRed" style="visibility: hidden"><b>������������!</b></div></td>
				</tr>
				<tr class="visible-xs" style="height : 80px !important;"> <!-- ������� �� ǥ�� 2022.05.09 �Ŵ�ȸ -->
					<th>�����Ⱓ</th>
					<td>
						<div><span id="dvEddate2">2023-01-11 21:25:10</span>����&nbsp;<div id="dvRemain2" class="btn btn-blue">2�� 7�ð� 28�� 50��</div></div>
					</td>
				</tr>
			
				<tr id="bidDelivery"> <!-- ���������¶��ΰ���� ���, �����˾� ����ó�� ���� ���� 2022.06.28 -->
					<th>��۹��</th>
					<td><span id="dvDeliveryB">�ù�, ����/����</span><span id="dvDeliveryMb">[����4,500��<br>����4,000��]</span></td>
				</tr>
				<tr>
					<th>�ּҰ�</th>
					<td id="dvBidunit">2,000��</td>
				</tr>
				<tr>
					<th>���簡</th>
					<td>
						<strong class="fcBlue" id="bidCmoney">222,000��</strong>&nbsp;<a href="#none" id="reload_btn" onclick="bidPopObj.bidFormLoad();" class="btn btn-gray" style="width:70px;padding:4px;">���ΰ�ħ</a>&nbsp;&nbsp;
						<a href="#none" id="bidPlus" class="btn btn-gray" style="display:inline-block;min-width:70px;padding:4px;"><font style="color:red;font-weight:bold;">��</font><span id="bidunitSpan">2,000</span></a>
					</td>
				</tr>
				<tr>
					<th>�����ݾ�</th>
					<td>
						<table id="bidTb" border="0" style="width:100%">
							<tbody><tr>
								<td width="92%" align="left">
									<div class="form-inline" id="bidmountDiv">
										<input type="text" autocomplete="off" class="form-control wp80 dpInblock w100" style="padding:4px 4px;" id="bidmount" name="bidmount" maxlength="12" onkeyup="bidObj.bidInputUpKey();" onkeydown="bidObj.bidInputDownKey();">
										<strong class="fcBlue" id="bidMoney">224,000��</strong>
									</div>
								</td>
								<td width="" align="right">
									<img id="key_pad" style="width:30px; height:24px; padding:1px 0 0px 0; cursor:pointer;" src="/kobay/images/common/numPad.png" title="�Էµ���" onclick="padToggle();">
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>	
				<tr id="padTr" style="display: none;"><td colspan="2" style="text-align:center;padding:0px;margin:0px;">
				        <table id="keypad3" style="width:100%; text-align:center; padding:0px; margin:0px; border:solid 2px black;">
				            <tbody><tr>
				                <td align="right" style="padding:4px 11px 0 0;"><div id="close_btn">��</div></td>
				            </tr>
				            <tr>
				                <td>
							        <table id="keypad" style="display: table;">
							            <tbody><tr>
							                <td class="key">1</td>
							                <td class="key">2</td>
							                <td class="key">3</td>
							                <td class="key">4</td>
							                <td class="key">5</td>
							                <td class="key" id="delBack">��</td>
							            </tr>
							            <tr>
							                <td class="key">6</td>
							                <td class="key">7</td>
							                <td class="key">8</td>
							                <td class="key">9</td>
							                <td class="key">0</td>
							                <td class="key2" id="key1000">000</td>
							            </tr>
							        </tbody></table>
				                </td>
				            </tr>
				            <tr>
				                <td>
							        <table id="keypad2">
							            <tbody><tr>
											<td class="keyPlus" id="unit0" style="text-align:center;" onclick="bidPopObj.bidFormLoad();" unselectable="on" onselectstart="return false;" onmousedown="return false;">���ΰ�ħ</td>
											<td class="keyPlus" id="unit1"> <font style="color:red;font-weight:bold;">��</font>2,000</td>
											<td class="keyPlus" id="unitMinus"> <font style="color:blue;font-weight:bold;">��</font>2,000</td>
											<td class="padBtn" id="delAll">��ü����</td>
							            </tr>
							        </tbody></table>
				                </td>
				            </tr>
				        </tbody></table>
					</td>
				</tr>
				<tr id="bidTotal">
					<th><br class="visible-xs">���űݾ�</th>
					<td>
						<strong class="fcBlue" id="bidTotalMoney">246,176��</strong>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<div class="modal-footer text-center">
							<a href="#none" onclick="bidPopObj.bidFormHandler();" class="btn btn-blue btn-md">�����ϰ� �����ϱ�</a>
							<a href="#none" class="btn btn-gray" data-dismiss="modal">���</a>
						</div>
					</td>
				</tr>
			

			</tbody></table>
		</div>
	</div>
</div>
}
