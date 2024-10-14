<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공통정보 가져오기</title>
<link rel="stylesheet" href="/resources/dc/css/api.css">
<style>
#form1 {
	border: 2px solid black;
	padding: '10px';
	marginTop: '10px';
}
.content_section {
	width: calc(100% - 250px); /* 사이드바 너비만큼 공간 확보 */
	margin-top: 5rem; /* 헤더 높이만큼 상단 여백 확보 */
	margin-left: 300px; /* 사이드바 너비만큼 왼쪽 여백 확보 */
}
h1 {
	background-color: yellow;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var url;
	var serviceKey;
	var numOfRows;
	var pageNo;
	var MobileOS;
	var MobileApp;
	var _type;
	var arrange;
	var contentTypeId;
	var contentId;

	var items; //json 데이타
	var resultMsg;
	
	$(document).ready(function() {
		$('#getCommon').click(getCommon);
		$('#saveCommon').click(saveCommon);
		$('#saveAuto').click(saveAuto);
		$('#saveAuto2').click(saveAuto2);

	});
	function saveAuto2() {
		//"처리 중" 이미지와 배경을 표시
	  document.getElementById('loading').style.display = 'block';
	  document.getElementById('overlay').style.display = 'block';
		let resultMsg1;
		let resultCode1;
		let numOfRows1;
		let pageNo1;
		let totalCount1;

		alert("클릭");
		//입력값 확인
		url = $('#url').val();
		serviceKey = $("#serviceKey").val();
		numOfRows = $("#numOfRows").val();
		pageNo = $("#pageNo").val();
		MobileOS = $("#MobileOS").val();
		MobileApp = $("#MobileApp").val();
		_type = $("#_type").val();
		arrange = $("#arrange").val();
		contentTypeId = $("#contentTypeId").val();
		contentId = $("#contentId").val();

		console.log(url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId);
		var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId;
		$(".url").text(myUrl);
		$.ajax({ 
			url : '/api/common_proxy', // 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data : {
				mode: 3,
				url : url,
				serviceKey : serviceKey,
				numOfRows : numOfRows,
				pageNo : pageNo,
				contentTypeId : contentTypeId,
				contentId: contentId
			},
			success : function(json) {
				//alert('Data get successfully!');
				//공공데이타 조회 결과값 표시 
				resultCode1 = json.response.header.resultCode;
				resultMsg1 = json.response.header.resultMsg;
				$(".resultCode1").text("response.header.resultMsg :" + resultCode1);
				$(".resultMsg1").text("response.header.resultMsg :" + resultMsg1);

				if (resultMsg1 == "OK") {

					numOfRows1 = json.response.body.numOfRows;
					pageNo1 = json.response.body.pageNo;
					totalCount1 = json.response.body.totalCount;
					//console.log(numOfRows1,pageNo1,totalCount1);
					$(".numOfRows1").text("response.body.numOfRows :" + numOfRows1);
					$(".pageNo1").text("response.body.pageNo :" + pageNo1);
					$(".totalCount1").text("response.body.totalCount :" + totalCount1);

					items = json.response.body.items.item;
					var tableBody = $('#ajaxTable');
					$('#ajaxTable').empty();
					var thead =$("<thead><tr>"
	            +"<th>CONTENTID    </th>"
	            +"<th>CONTENTTYPEID</th>"
	            +"<th>BOOKTOUR     </th>"
	            +"<th>CREATEDTIME  </th>"
	            +"<th>HOMEPAGE     </th>"
	            +"<th>MODIFIEDTIME </th>"
	            +"<th>TEL          </th>"
	            +"<th>TELNAME      </th>"
	            +"<th>TITLE        </th>"
	            +"<th>FIRSTIMAGE   </th>"
	            +"<th>FIRSTIMAGE2  </th>"
	            +"<th>CPYRHTDIVCD  </th>"
	            +"<th>AREACODE     </th>"
	            +"<th>SIGUNGUCODE  </th>"
	            +"<th>CAT1         </th>"
	            +"<th>CAT2         </th>"
	            +"<th>CAT3         </th>"
	            +"<th>ADDR1        </th>"
	            +"<th>ADDR2        </th>"
	            +"<th>ZIPCODE      </th>"
	            +"<th>MAPX         </th>"
	            +"<th>MAPY         </th>"
	            +"<th>MLEVEL       </th>"
	            +"<th>OVERVIEW     </th>"
	            +"</tr></thead>");
					tableBody.append(thead);

					$.each(items, function(index, item) {
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.contentid));
						newRow.append($('<td></td>').text(item.contenttypeid));
						newRow.append($('<td></td>').text(item.booktour));
						newRow.append($('<td></td>').text(item.createdtime));
						newRow.append($('<td></td>').text(item.homepage));
						newRow.append($('<td></td>').text(item.modifiedtime));
						newRow.append($('<td></td>').text(item.tel));
						newRow.append($('<td></td>').text(item.telname));
						newRow.append($('<td></td>').text(item.title));
						newRow.append($('<td></td>').text(item.firstimage));
						newRow.append($('<td></td>').text(item.firstimage2));
						newRow.append($('<td></td>').text(item.cpyrhtdivcd));
						newRow.append($('<td></td>').text(item.areacode));
						newRow.append($('<td></td>').text(item.sigungucode));
						newRow.append($('<td></td>').text(item.cat1));
						newRow.append($('<td></td>').text(item.cat2));
						newRow.append($('<td></td>').text(item.cat3));
						newRow.append($('<td></td>').text(item.addr1));
						newRow.append($('<td></td>').text(item.addr2));
						newRow.append($('<td></td>').text(item.zipcode));
						newRow.append($('<td></td>').text(item.mapx));
						newRow.append($('<td></td>').text(item.mapy));
						newRow.append($('<td></td>').text(item.mlevel));
						newRow.append($('<td></td>').text(item.overview));

						tableBody.append(newRow);
					});

				}
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';
			  alert('입력이 완료되었습니다.');
			},
			error : function(xhr, textStatus, errorThrown) {
				alert('Error: ' + errorThrown);
				$(".error1").html(
						"<div>" + textStatus + " (HTTP-" + xhr.status + " / " + errorThrown
								+ ")</div>");
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';			 
			}
		});
	}

	function saveAuto() {
		//"처리 중" 이미지와 배경을 표시
	  document.getElementById('loading').style.display = 'block';
	  document.getElementById('overlay').style.display = 'block';
		let resultMsg1;
		let resultCode1;
		let numOfRows1;
		let pageNo1;
		let totalCount1;

		alert("클릭");
		//입력값 확인
		url = $('#url').val();
		serviceKey = $("#serviceKey").val();
		numOfRows = $("#numOfRows").val();
		pageNo = $("#pageNo").val();
		MobileOS = $("#MobileOS").val();
		MobileApp = $("#MobileApp").val();
		_type = $("#_type").val();
		arrange = $("#arrange").val();
		contentTypeId = $("#contentTypeId").val();
		contentId = $("#contentId").val();

		console.log(url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId);
		var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId;
		$(".url").text(myUrl);
		$.ajax({ 
			url : '/api/common_proxy', // 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data : {
				mode: 2,
				url : url,
				serviceKey : serviceKey,
				numOfRows : numOfRows,
				pageNo : pageNo,
				contentTypeId : contentTypeId,
				contentId: contentId
			},
			success : function(json) {
				alert('Data get successfully!');
				//공공데이타 조회 결과값 표시 
				resultCode1 = json.response.header.resultCode;
				resultMsg1 = json.response.header.resultMsg;
				$(".resultCode1").text("response.header.resultMsg :" + resultCode1);
				$(".resultMsg1").text("response.header.resultMsg :" + resultMsg1);

				if (resultMsg1 == "OK") {

					numOfRows1 = json.response.body.numOfRows;
					pageNo1 = json.response.body.pageNo;
					totalCount1 = json.response.body.totalCount;
					//console.log(numOfRows1,pageNo1,totalCount1);
					$(".numOfRows1").text("response.body.numOfRows :" + numOfRows1);
					$(".pageNo1").text("response.body.pageNo :" + pageNo1);
					$(".totalCount1").text("response.body.totalCount :" + totalCount1);

					items = json.response.body.items.item;
					var tableBody = $('#ajaxTable');
					$('#ajaxTable').empty();
					var thead =$("<thead><tr>"
	            +"<th>CONTENTID    </th>"
	            +"<th>CONTENTTYPEID</th>"
	            +"<th>BOOKTOUR     </th>"
	            +"<th>CREATEDTIME  </th>"
	            +"<th>HOMEPAGE     </th>"
	            +"<th>MODIFIEDTIME </th>"
	            +"<th>TEL          </th>"
	            +"<th>TELNAME      </th>"
	            +"<th>TITLE        </th>"
	            +"<th>FIRSTIMAGE   </th>"
	            +"<th>FIRSTIMAGE2  </th>"
	            +"<th>CPYRHTDIVCD  </th>"
	            +"<th>AREACODE     </th>"
	            +"<th>SIGUNGUCODE  </th>"
	            +"<th>CAT1         </th>"
	            +"<th>CAT2         </th>"
	            +"<th>CAT3         </th>"
	            +"<th>ADDR1        </th>"
	            +"<th>ADDR2        </th>"
	            +"<th>ZIPCODE      </th>"
	            +"<th>MAPX         </th>"
	            +"<th>MAPY         </th>"
	            +"<th>MLEVEL       </th>"
	            +"<th>OVERVIEW     </th>"
	            +"</tr></thead>");
					tableBody.append(thead);

					$.each(items, function(index, item) {
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.contentid));
						newRow.append($('<td></td>').text(item.contenttypeid));
						newRow.append($('<td></td>').text(item.booktour));
						newRow.append($('<td></td>').text(item.createdtime));
						newRow.append($('<td></td>').text(item.homepage));
						newRow.append($('<td></td>').text(item.modifiedtime));
						newRow.append($('<td></td>').text(item.tel));
						newRow.append($('<td></td>').text(item.telname));
						newRow.append($('<td></td>').text(item.title));
						newRow.append($('<td></td>').text(item.firstimage));
						newRow.append($('<td></td>').text(item.firstimage2));
						newRow.append($('<td></td>').text(item.cpyrhtdivcd));
						newRow.append($('<td></td>').text(item.areacode));
						newRow.append($('<td></td>').text(item.sigungucode));
						newRow.append($('<td></td>').text(item.cat1));
						newRow.append($('<td></td>').text(item.cat2));
						newRow.append($('<td></td>').text(item.cat3));
						newRow.append($('<td></td>').text(item.addr1));
						newRow.append($('<td></td>').text(item.addr2));
						newRow.append($('<td></td>').text(item.zipcode));
						newRow.append($('<td></td>').text(item.mapx));
						newRow.append($('<td></td>').text(item.mapy));
						newRow.append($('<td></td>').text(item.mlevel));
						newRow.append($('<td></td>').text(item.overview));

						tableBody.append(newRow);
					});

				}
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';
			},
			error : function(xhr, textStatus, errorThrown) {
				alert('Error: ' + errorThrown);
				$(".error1").html(
						"<div>" + textStatus + " (HTTP-" + xhr.status + " / " + errorThrown
								+ ")</div>");
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';
			}
		});
	}
	
	function getCommon() {
		//"처리 중" 이미지와 배경을 표시
	  document.getElementById('loading').style.display = 'block';
	  document.getElementById('overlay').style.display = 'block';
		let resultMsg1;
		let resultCode1;
		let numOfRows1;
		let pageNo1;
		let totalCount1;

		alert("클릭");
		//입력값 확인
		url = $('#url').val();
		serviceKey = $("#serviceKey").val();
		numOfRows = $("#numOfRows").val();
		pageNo = $("#pageNo").val();
		MobileOS = $("#MobileOS").val();
		MobileApp = $("#MobileApp").val();
		_type = $("#_type").val();
		arrange = $("#arrange").val();
		contentTypeId = $("#contentTypeId").val();
		contentId = $("#contentId").val();

		console.log(url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId);
		var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId;
		$(".url").text(myUrl);
		$.ajax({ 
			url : '/api/common_proxy', // 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data : {
				mode: 1,
				url : url,
				serviceKey : serviceKey,
				numOfRows : numOfRows,
				pageNo : pageNo,
				contentTypeId : contentTypeId,
				contentId: contentId
			},
			success : function(json) {
				alert('Data get successfully!');
				//공공데이타 조회 결과값 표시 
				resultCode1 = json.response.header.resultCode;
				resultMsg1 = json.response.header.resultMsg;
				$(".resultCode1").text("response.header.resultMsg :" + resultCode1);
				$(".resultMsg1").text("response.header.resultMsg :" + resultMsg1);

				if (resultMsg1 == "OK") {

					numOfRows1 = json.response.body.numOfRows;
					pageNo1 = json.response.body.pageNo;
					totalCount1 = json.response.body.totalCount;
					//console.log(numOfRows1,pageNo1,totalCount1);
					$(".numOfRows1").text("response.body.numOfRows :" + numOfRows1);
					$(".pageNo1").text("response.body.pageNo :" + pageNo1);
					$(".totalCount1").text("response.body.totalCount :" + totalCount1);

					items = json.response.body.items.item;
					console.log("items",items);
					var tableBody = $('#ajaxTable');
					$('#ajaxTable').empty();
					var thead =$("<thead><tr>"
					            +"<th>CONTENTID    </th>"
					            +"<th>CONTENTTYPEID</th>"
					            +"<th>BOOKTOUR     </th>"
					            +"<th>CREATEDTIME  </th>"
					            +"<th>HOMEPAGE     </th>"
					            +"<th>MODIFIEDTIME </th>"
					            +"<th>TEL          </th>"
					            +"<th>TELNAME      </th>"
					            +"<th>TITLE        </th>"
					            +"<th>FIRSTIMAGE   </th>"
					            +"<th>FIRSTIMAGE2  </th>"
					            +"<th>CPYRHTDIVCD  </th>"
					            +"<th>AREACODE     </th>"
					            +"<th>SIGUNGUCODE  </th>"
					            +"<th>CAT1         </th>"
					            +"<th>CAT2         </th>"
					            +"<th>CAT3         </th>"
					            +"<th>ADDR1        </th>"
					            +"<th>ADDR2        </th>"
					            +"<th>ZIPCODE      </th>"
					            +"<th>MAPX         </th>"
					            +"<th>MAPY         </th>"
					            +"<th>MLEVEL       </th>"
					            +"<th>OVERVIEW     </th>"
					            +"</tr></thead>");
					tableBody.append(thead);

					$.each(items, function(index, item) {
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.contentid));
						newRow.append($('<td></td>').text(item.contenttypeid));
						newRow.append($('<td></td>').text(item.booktour));
						newRow.append($('<td></td>').text(item.createdtime));
						newRow.append($('<td></td>').text(item.homepage));
						newRow.append($('<td></td>').text(item.modifiedtime));
						newRow.append($('<td></td>').text(item.tel));
						newRow.append($('<td></td>').text(item.telname));
						newRow.append($('<td></td>').text(item.title));
						newRow.append($('<td></td>').text(item.firstimage));
						newRow.append($('<td></td>').text(item.firstimage2));
						newRow.append($('<td></td>').text(item.cpyrhtdivcd));
						newRow.append($('<td></td>').text(item.areacode));
						newRow.append($('<td></td>').text(item.sigungucode));
						newRow.append($('<td></td>').text(item.cat1));
						newRow.append($('<td></td>').text(item.cat2));
						newRow.append($('<td></td>').text(item.cat3));
						newRow.append($('<td></td>').text(item.addr1));
						newRow.append($('<td></td>').text(item.addr2));
						newRow.append($('<td></td>').text(item.zipcode));
						newRow.append($('<td></td>').text(item.mapx));
						newRow.append($('<td></td>').text(item.mapy));
						newRow.append($('<td></td>').text(item.mlevel));
						newRow.append($('<td></td>').text(item.overview));

						tableBody.append(newRow);
					});
				}
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';

			},
			error : function(xhr, textStatus, errorThrown) {
				alert('Error: ' + errorThrown);
				$(".error1").html(
						"<div>" + textStatus + " (HTTP-" + xhr.status + " / " + errorThrown
								+ ")</div>");
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';
			}
		});
	}

	function saveCommon() {
		//"처리 중" 이미지와 배경을 표시
	  document.getElementById('loading').style.display = 'block';
	  document.getElementById('overlay').style.display = 'block';
		alert("sending....");
		//event.preventDefault();
		// Ajax 
		$.ajax({
			url : '/ajax/insertAPI_common', // 
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(items),
			//dataType : "JSON",
			success : function(response) {
				alert('Data insert successfully!');
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';
			},
			error : function(xhr, Status, error) {
				alert('Error: ' + error);
				document.getElementById('loading').style.display = 'none';
			  document.getElementById('overlay').style.display = 'none';
			}
		});
	}
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header_adm.jsp"%>

<div class="content_section">
	<h1>API_COMMON(공통정보-소개글, 홈페이지 주소 등)</h1>
	<hr>
	<div id="form1">
		url:<input id="url" size=90 value="https://apis.data.go.kr/B551011/KorService1/detailCommon1" readonly><br> 
		serviceKey:<input	id="serviceKey" size=100 value="KyKlcn82QcUpq39lKg0eLESMZb9SG+PcmYrQWzSAHY7C2CR0JYlhtyO1Ka5Aam6bU0W5KiXHsJq/L9j5y6kbUA=="><br>
		numOfRows:<input id="numOfRows" value="1"><br> 
		pageNo:<input id="pageNo" value="1"><br> 
		MobileOS: <select id="MobileOS">
			<option value="IOS">IOS (아이폰)</option>
			<option value="AND">AND (안드로이드)</option>
			<option value="WIN">WIN (윈도우폰)</option>
			<option value="ETC" selected>ETC</option>
		</select><br> 
		MobileApp: <select id="MobileApp">
			<option value="AppTest">AppTest</option>
		</select><br> 
		contentTypeId:<input id="contentTypeId" value="12"><br> 
		<strong>contentId:</strong><input id="contentId" value='126508'><==== <br>
		_type: <select id="_type">
			<option value="json">json</option>
		</select><br>

		<button type="button" id="getCommon" class="getCommon">proxy 공공데이타에서 공통자료 가져오기</button>
		<button type="button" id="saveCommon" class="saveCommon">DB 저장</button>
		<button type="button" id="saveAuto" class="saveAuto">content id 매칭 자동저장</button>
		<button type="button" id="saveAuto2" class="saveAuto2">content id/type 매칭 자동저장</button>
	</div>

	<div id="content1" class="contentsBox">
		<div class="url"></div>
		<hr>
		<div class="resultCode1">resultCode:</div>
		<div class="resultMsg1">resultMsg:</div>
		<div class="numOfRows1">numOfRows:</div>
		<div class="pageNo1">pageNo:</div>
		<div class="totalCount1">totalCount:</div>
		<div class="error1">error:</div>
		<table id="ajaxTable" border=1>
		</table>
	</div>
	<div id="overlay"></div>
  <img id="loading" src="/resources/dc/image/processing.gif" alt="처리 중...">
</div>	
</body>
</html>