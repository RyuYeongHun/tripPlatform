<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Send JSON to Server</title>
<style>
.contentsBox {
	float: left;
}
h1 {
	background-color: yellow;
}
.content_section {
	width: calc(100% - 250px); /* 사이드바 너비만큼 공간 확보 */
	margin-top: 5rem; /* 헤더 높이만큼 상단 여백 확보 */
	margin-left: 300px; /* 사이드바 너비만큼 왼쪽 여백 확보 */
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

	$(document).ready(function() {
		let items;
		let cat;
		let resultMsg1;
		let resultCode1;
		let numOfRows1;
		let pageNo1;
		let totalCount1;
		let resultMsg2;
		let resultCode2;
		let numOfRows2;
		let pageNo2;
		let totalCount2;
		let resultMsg3;
		let resultCode3;
		let numOfRows3;
		let pageNo3;
		let totalCount3;

				//proxy 대분류 조회
				$(".proxyCat1").click(
						function(event) {
							alert("클릭");
							//event.preventDefault();
							// Ajax 
							$.ajax({
								//url : 'resources/dc/cat_code_cat1.json', //
								//url : 'http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=KyKlcn82QcUpq39lKg0eLESMZb9SG%2BPcmYrQWzSAHY7C2CR0JYlhtyO1Ka5Aam6bU0W5KiXHsJq%2FL9j5y6kbUA%3D%3D&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json',
								url : '/api/external-data', //
								type : 'get',
								contentType : 'application/json; charset=UTF-8',
								dataType : "JSON",
								success : function(json) {
									alert('Data get successfully!');
									resultCode1 = json.response.header.resultCode;
									resultMsg1 = json.response.header.resultMsg;
									$(".resultCode1").text(
											"response.header.resultMsg :" + resultCode1);
									$(".resultMsg1").text(
											"response.header.resultMsg :" + resultMsg1);
									numOfRows1 = json.response.body.numOfRows;
									pageNo1 = json.response.body.pageNo;
									totalCount1 = json.response.body.totalCount;

									if (resultMsg1 == "NO_DATA") {
										$(".error1").text("Error 없음");
									} else if (resultMsg1 == "OK") {
										$(".numOfRows1").text(
												"response.body.numOfRows :" + numOfRows1);
										$(".pageNo1").text("response.body.pageNo :" + pageNo1);
										$(".totalCount1").text(
												"response.body.totalCount :" + totalCount1);

										cat1 = json.response.body.items.item;//json 데이타
										var tableBody = $('#cat1Table');
										let etc = "";
										$.each(cat1, function(index, item) {
											etc = "";
											var newRow = $('<tr></tr>');
											newRow.append($('<td></td>').text(item.rnum));
											newRow.append($('<td></td>').text(item.code));
											newRow.append($('<td></td>').text(item.name));
											if ((item.code).length == 3) {
												cat = "cat2";
											} else if ((item.code).length == 5) {
												cat = "cat3";
											}
											etc = "<button type='button' onclick=\"myAjaxFunction('"
													+ cat + "','" + item.code + "')\">중분류 조회</button>";
											//etc = "<button type='button' onclick='myAjaxFunction1()'>중분류 조회</button>";
											newRow.append($('<td></td>').html(etc));

											tableBody.append(newRow);
										});

									}

								},
								error : function(xhr, textStatus, errorThrown) {
									alert('Error: ' + errorThrown);
									$(".error1").html(
											"<div>" + textStatus + " (HTTP-" + xhr.status + " / "
													+ errorThrown + ")</div>");
								}
							});
						});
				//proxy 대분류 조회 끝
				//cat1 대분류 저장
				$(".saveCat1").click(function(event) {
					alert("sending....");
					//event.preventDefault();
					// Ajax 
					$.ajax({
						url : '/ajax/insertAPI_cat_code', // 
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(cat1),
						//dataType : "JSON",
						success : function(response) {
							alert('Data sent successfully!');
						},
						error : function(xhr, Status, error) {
							alert('Error: ' + error);
						}
					});
				});

			});
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header_adm.jsp"%>
	
<div class="content_section">
	<h1>API_CAT_CODE(분류코드)</h1>
	<button type="button" id="searchCat1" class="searchCat1">대분류 조회</button>
	<button type="button" id="saveCat1" class="saveCat1">대분류 저장</button>
	<br>

	<button type="button" id="proxyCat1" class="proxyCat1">proxy대분류 조회</button><br>
	<button type="button" onclick="saveCat23()" id="saveCat23" class="saveCat23">중소분류 저장</button>
	<br>
	<button type="button" id="searchCat3" class="searchCat3">소분류 조회</button>
	<button type="button" onclick="saveFunction()" id="saveCat3" class="saveCat3">소분류 저장</button>
	<hr>
	<div class="result"></div>
	<div class="error"></div>
	<hr>
	<div class="contentsBox">
		<div class="resultCode1"></div>
		<div class="resultMsg1"></div>
		<div class="numOfRows1"></div>
		<div class="pageNo1"></div>
		<div class="totalCount1"></div>
		<div class="error1"></div>
		<table id="cat1Table" border=1>
			<thead>
				<tr>
					<th>RNUM</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>etc</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<div class="contentsBox">	
		<div class="resultCode2"></div>
		<div class="resultMsg2"></div>
		<div class="numOfRows2"></div>
		<div class="pageNo2"></div>
		<div class="totalCount2"></div>	
		<div class="error2"></div>
		<table id="cat2Table" border=1>
			<thead>
				<tr>
					<th>RNUM</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>etc</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>	
	<div class="contentsBox">		
		<div class="resultCode3"></div>
		<div class="resultMsg3"></div>
		<div class="numOfRows3"></div>
		<div class="pageNo3"></div>
		<div class="totalCount3"></div>	
		<div class="error3"></div>
		<table id="cat3Table" border=1>
			<thead>
				<tr>
					<th>RNUM</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>etc</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
</div>	
<script>
function myAjaxFunction(cat, code1) {
	alert('myAjaxFunction excuting....');					
	
	$.ajax({
		url : '/api/external-data', 
		type : 'get',
		contentType : 'application/json; charset=UTF-8',
		data:{
			cat: cat,
			itemCode: code1
		},
		dataType : "JSON",
		success : function(json) {
			alert('Data get successfully!');
			resultCode = json.response.header.resultCode;
			resultMsg = json.response.header.resultMsg;
			$(".resultCode2").text("response.header.resultMsg2 :"+resultCode);
			$(".resultMsg2").text("response.header.resultMsg2 :"+resultMsg);
			numOfRows=json.response.body.numOfRows;
			pageNo=json.response.body.pageNo;
			totalCount=json.response.body.totalCount;
			
			if (resultMsg == "NO_DATA") {
				$(".error").text("Error 없음");
			} else if (resultMsg == "OK") {
				$(".numOfRows2").text("response.body.numOfRows :"+numOfRows);
				$(".pageNo2").text("response.body.pageNo :"+pageNo);
				$(".totalCount2").text("response.body.totalCount :"+totalCount);

				cat2 = json.response.body.items.item;
				var tableBody2 = $('#cat2Table');
				etc="";
				$.each(cat2, function(index, item) {
					
					var newRow = $('<tr></tr>');
					newRow.append($('<td></td>').text(item.rnum));
					newRow.append($('<td></td>').text(item.code));
					newRow.append($('<td></td>').text(item.name));
					if((item.code).length==3) {
						cat = "cat2";
					}else if((item.code).length==5){
						cat = "cat3";
					}
					etc = "<button type='button' onclick=\"myAjaxFunction('"+cat+"','"+item.code+"')\">중소분류 조회</button>";
					//etc = "<button type='button' onclick='myAjaxFunction1()'>중분류 조회</button>";
					newRow.append($('<td></td>').html(etc));

					tableBody2.append(newRow);
				});

			}

		},
		error : function(xhr, textStatus, errorThrown) {
			alert('Error: ' + error);
			$(".error").html(
					"<div>" + textStatus + " (HTTP-" + xhr.status + " / "
							+ errorThrown + ")</div>");
		}
	});
}
function saveCat23() {
			alert("sending....");
			//event.preventDefault();
			// Ajax 
			$.ajax({
				url : '/ajax/insertAPI_cat_code', // 
				type : 'POST',
				contentType : 'application/json',
				data: JSON.stringify(cat2),
				//dataType : "JSON",
				success : function(response) {
					alert('Data sent successfully!');
				},
				error : function(xhr, Status, error) {
					alert('Error: ' + error);
				}
			});
		}

</script>	
</body>
</html>
