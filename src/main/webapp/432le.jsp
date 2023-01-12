<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal" id="myinModal">
		
		<input type="hidden" name="modalGubun" id="modalGubun">
			<!-- Modal content-->
			<div class="modal-content">
				<input type="hidden" id="TenderHistoryPage" name="TenderHistoryPage">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal">✖</button>
				</div>
				
					<div class="modal-body">
						
						<h4><strong><span id="itemName"></span></strong></h4>
						<div class="row mt10 mb10">
							<div class="col-sm-9 fcBlue mt10"></div>
							<div class="col-sm-3 form-group mt5">
								<select name="th_row" id="th_row" class="form-control" onchange="bidObj.bidListHandler('1');">
									<option value="10">10개</option>
									<option value="20">20개</option>
									<option value="30">30개</option>
								</select>
							</div>
						</div>
						<div class="tableDefault">
							<table class="text-center">
								<colgroup>
									<col width="33%;">
									<col width="25%;">
									<col width="24%;">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>입찰일시</th>
										<th>입찰자</th>
										<th>입찰금액</th>
										
									</tr>
								</thead>
								<tbody id="th_table"><tr>
<td>2023-01-05 17:20:40.08</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 18:46:03.43</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 20:18:20.18</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 20:50:01.80</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-05 22:28:18.58</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 00:18:07.97</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 07:57:17.51</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 08:36:40.37</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 10:19:32.23</td>
<td>*****</td>
<td>진행중</td>
</tr>
<tr>
<td>2023-01-06 15:27:19.37</td>
<td>*****</td>
<td>진행중</td>
</tr>
</tbody>
							</table>
							<div id="th_paging" class="pager"><ul class="pagination"><li><a href="#none" onclick="goPage(1)" style="letter-spacing:-3px;">&lt;&lt;</a></li>
<li><a href="#none" onclick="goPage(1)" style="">1</a></li>
<li class="active"><a href="#none">2</a></li><li><a href="#none" onclick="goPage(3)" style="">3</a></li>
<li><a href="#none" onclick="goPage(4)" style="">4</a></li>
<li><a href="#none" onclick="goPage(5)" style="">5</a></li>
<li><a href="#none" onclick="goPage(6)" style="">&gt;</a></li>
<li><a href="#none" onclick="goPage(6)" style="letter-spacing:-3px;">&gt;&gt;</a></li>
</ul>
</div>
						</div>

					</div>

					
			</div>

		</div>
	
</body>
</html>