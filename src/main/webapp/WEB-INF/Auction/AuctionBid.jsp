<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  tr,td {
    border: 1px solid #444444;
  }
.sk{color="skyblue"}
.skbor{border-color: #4571E9}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
<div class="modal-content" >
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"></button>
		<h4 class="modal-title" ><strong >입찰하기</strong></h4>
	</div>

	<div class="modal-body">
		<h4 class="fs18i" style="text-align:center;" ><strong><span id="dvItemname">산울림 귀여운 소녀의 디스코 LP</span></strong></h4>
		<div class="tableDefault">
			<div id="numBox" style="display:none;position:absolute"></div><table>
				<tbody><tr>
					<th style="text-align:center;">판매자</th>
					<td><strong><span id="dvUserid">math0715</span></strong></td>
				</tr>
				<tr class="visible-lg visible-md visible-sm">
					<th style="text-align:center;">남은기간</th>
					<td><span id="dvEddate">20:35</span></td>
				</tr>
				
			
				<tr id="bidDelivery"> 
					<th style="text-align:center;">입찰내역</th>
					<td><span id="dvDeliveryB">26건</span><span id="dvDeliveryMb"></span>
					
					    <span id="dvDeliveryB"><button onclick=>입찰상세내역</button></span><span id="dvDeliveryMb"></span>
					</td>
				</tr>
				<tr>
					<th style="text-align:center;">최소가</th>
					<td id="dvBidunit">2,000원</td>
				</tr>
				<tr>
					<th style="text-align:center;">현재가</th>
					<td >
						<strong class="fcBlue" id="bidCmoney">222,000원</strong>&nbsp;<button href="#none" class="skbor" id="reload_btn" onclick="bidPopObj.bidFormLoad();"style="width:70px;padding:4px;">새로고침</button>
						<a href="#none" id="bidPlus" class="btn btn-gray" style="display:inline-block;min-width:70px;padding:4px;"><font style="color:red;font-weight:bold;">▲</font><span id="bidunitSpan">2,000</span></a>
					</td>
				</tr>
				<tr>
					<th style="text-align:center;">입찰금액</th>
					<td>
						<table id="bidTb" border="0" style="width:100%">
							<tbody><tr>
								<td width="92%" align="left">
									<div class="form-inline" id="bidmountDiv">
										<input type="text" autocomplete="off" class="form-control wp80 dpInblock w100" style="padding:4px 4px;" id="bidmount" name="bidmount" maxlength="12" onkeyup="bidObj.bidInputUpKey();" onkeydown="bidObj.bidInputDownKey();">
										<strong class="fcBlue" id="bidMoney">최소 224,000원</strong>
									</div>
								
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
				                
							        </tbody></table>
				                </td>
				            </tr>
				        </tbody></table>
					
				</tr>
		

				<tr>
					<td colspan="2">
						<div class="modal-footer text-center">
							<button href="#none" onclick="bidPopObj.bidFormHandler();" class="btn btn-blue btn-md" class="skbor">신중하게 입찰하기</button>
							<button href="#none" class="btn btn-gray" data-dismiss="modal" class="skbor">취소</button>
							
						</div>
					</td>
				</tr>
			

			</tbody>
		</div>
	</div>
</div>
</body>
</html>