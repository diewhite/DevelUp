package tresh;

public class AuctionBid {
	<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"></button>
		<h4 class="modal-title"><strong>입찰하기</strong></h4>
	</div>

	<div class="modal-body">
		<h4 class="fs18i"><strong><span id="dvItemname">산울림 귀여운 소녀의 디스코 LP</span></strong></h4>
		<div class="tableDefault">
			<div id="numBox" style="display:none;position:absolute"></div><table>
				<tbody><tr>
					<th>판매자</th>
					<td><strong><span id="dvUserid">math0715</span></strong>&nbsp</td>
				</tr>
				<tr class="visible-lg visible-md visible-sm">
					<th>남은기간</th>
					<!-- <td><span id="dvEddate"></span>까지&nbsp;<div id="dvRemain" class="btn btn-blue"></div>&nbsp;<div id="dvExtnAuc" class="btn btn-blue-green" style="display:none;">연장경매진행중!</div></td> -->
					<td><span id="dvEddate">2023-01-11 21:25:10</span>까지&nbsp;<div id="dvRemain" class="btn btn-blue">2일 7시간 28분 50초</div>&nbsp;<div id="dvExtnAuc" class="fcRed" style="visibility: hidden"><b>연장경매진행중!</b></div></td>
				</tr>
				<tr class="visible-xs" style="height : 80px !important;"> <!-- 모바일일 때 표시 2022.05.09 신다회 -->
					<th>남은기간</th>
					<td>
						<div><span id="dvEddate2">2023-01-11 21:25:10</span>까지&nbsp;<div id="dvRemain2" class="btn btn-blue">2일 7시간 28분 50초</div></div>
					</td>
				</tr>
			
				<tr id="bidDelivery"> <!-- 삶의흔적온라인경매의 경우, 입찰팝업 예외처리 누락 수정 2022.06.28 -->
					<th>배송방법</th>
					<td><span id="dvDeliveryB">택배, 선불/착불</span><span id="dvDeliveryMb">[착불4,500원<br>선불4,000원]</span></td>
				</tr>
				<tr>
					<th>최소가</th>
					<td id="dvBidunit">2,000원</td>
				</tr>
				<tr>
					<th>현재가</th>
					<td>
						<strong class="fcBlue" id="bidCmoney">222,000원</strong>&nbsp;<a href="#none" id="reload_btn" onclick="bidPopObj.bidFormLoad();" class="btn btn-gray" style="width:70px;padding:4px;">새로고침</a>&nbsp;&nbsp;
						<a href="#none" id="bidPlus" class="btn btn-gray" style="display:inline-block;min-width:70px;padding:4px;"><font style="color:red;font-weight:bold;">▲</font><span id="bidunitSpan">2,000</span></a>
					</td>
				</tr>
				<tr>
					<th>입찰금액</th>
					<td>
						<table id="bidTb" border="0" style="width:100%">
							<tbody><tr>
								<td width="92%" align="left">
									<div class="form-inline" id="bidmountDiv">
										<input type="text" autocomplete="off" class="form-control wp80 dpInblock w100" style="padding:4px 4px;" id="bidmount" name="bidmount" maxlength="12" onkeyup="bidObj.bidInputUpKey();" onkeydown="bidObj.bidInputDownKey();">
										<strong class="fcBlue" id="bidMoney">224,000원</strong>
									</div>
								</td>
								<td width="" align="right">
									<img id="key_pad" style="width:30px; height:24px; padding:1px 0 0px 0; cursor:pointer;" src="/kobay/images/common/numPad.png" title="입력도구" onclick="padToggle();">
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>	
				<tr id="padTr" style="display: none;"><td colspan="2" style="text-align:center;padding:0px;margin:0px;">
				        <table id="keypad3" style="width:100%; text-align:center; padding:0px; margin:0px; border:solid 2px black;">
				            <tbody><tr>
				                <td align="right" style="padding:4px 11px 0 0;"><div id="close_btn">×</div></td>
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
							                <td class="key" id="delBack">←</td>
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
											<td class="keyPlus" id="unit0" style="text-align:center;" onclick="bidPopObj.bidFormLoad();" unselectable="on" onselectstart="return false;" onmousedown="return false;">새로고침</td>
											<td class="keyPlus" id="unit1"> <font style="color:red;font-weight:bold;">▲</font>2,000</td>
											<td class="keyPlus" id="unitMinus"> <font style="color:blue;font-weight:bold;">▼</font>2,000</td>
											<td class="padBtn" id="delAll">전체삭제</td>
							            </tr>
							        </tbody></table>
				                </td>
				            </tr>
				        </tbody></table>
					</td>
				</tr>
				<tr id="bidTotal">
					<th><br class="visible-xs">구매금액</th>
					<td>
						<strong class="fcBlue" id="bidTotalMoney">246,176원</strong>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<div class="modal-footer text-center">
							<a href="#none" onclick="bidPopObj.bidFormHandler();" class="btn btn-blue btn-md">신중하게 입찰하기</a>
							<a href="#none" class="btn btn-gray" data-dismiss="modal">취소</a>
						</div>
					</td>
				</tr>
			

			</tbody></table>
		</div>
	</div>
</div>
}
