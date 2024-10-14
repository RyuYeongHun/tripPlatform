<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Send JSON to Server</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 대분류, 중분류, 소분류 url
http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ%3D%3D&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json

http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ%3D%3D&cat1=A01&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json

http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ%3D%3D&cat1=A01&cat2=A0101&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json 
-->
<script>

	$(document).ready(
			function() {
				let items;
				let cat1;
				let cat2;
				let cat3;
				let resultMsg;
				let resultCode;
				let numOfRows;
				let pageNo;
				let totalCount;
				let param2;
				let param3;
				
				function myAjaxFunction(cat, code) {
			    // cat과 code를 사용하여 AJAX 요청 수행
			    console.log("Cat: " + cat + ", Code: " + code);
			}
				function myAjaxFunction1() {
			    // cat과 code를 사용하여 AJAX 요청 수행
			    console.log("myAjaxFunction1");
			}

				
				//대분류 조회
				$(".searchCat1").click(
						function(event) {
							alert("클릭");
							//event.preventDefault();
							// Ajax 
							$.ajax({
								//url : 'resources/dc/cat_code_cat1.json', //
								url : 'http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=KyKlcn82QcUpq39lKg0eLESMZb9SG+PcmYrQWzSAHY7C2CR0JYlhtyO1Ka5Aam6bU0W5KiXHsJq/L9j5y6kbUA==&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json',
								type : 'get',
								contentType : 'application/json',
								dataType : "JSON",
								xhrFields: { 
						    	withCredentials: true // 클라이언트와 서버가 통신할때 쿠키와 같은 인증 정보 값을 공유하겠다는 설정
						    },
								success : function(json) {
									alert('Data get successfully!');
									resultCode = json.response.header.resultCode;
									resultMsg = json.response.header.resultMsg;
									$(".resultCode").text("response.header.resultMsg :"+resultCode);
									$(".resultMsg").text("response.header.resultMsg :"+resultMsg);
									numOfRows=json.response.body.numOfRows;
									pageNo=json.response.body.pageNo;
									totalCount=json.response.body.totalCount;
									
									if (resultMsg == "NO_DATA") {
										$(".error").text("Error 없음");
									} else if (resultMsg == "OK") {
										$(".numOfRows").text("response.body.numOfRows :"+numOfRows);
										$(".pageNo").text("response.body.pageNo :"+pageNo);
										$(".totalCount").text("response.body.totalCount :"+totalCount);

										cat1 = json.response.body.items.item;
										var tableBody = $('#ajaxTable');

										$.each(cat1, function(index, item) {
											var newRow = $('<tr></tr>');
											newRow.append($('<td></td>').text(item.rnum));
											newRow.append($('<td></td>').text(item.code));
											newRow.append($('<td></td>').text(item.name));

											tableBody.append(newRow);
										});

									}

								},
								error : function(xhr, textStatus, errorThrown) {
									alert('Error: ' + errorThrown);
									$(".error").html(
											"<div>" + textStatus + " (HTTP-" + xhr.status + " / "
													+ errorThrown + ")</div>");
								}
							});
						});
				//proxy 대분류 조회
				$(".proxyCat1").click(
						function(event) {
							alert("클릭");
							//event.preventDefault();
							// Ajax 
							$.ajax({
								//url : 'resources/dc/cat_code_cat1.json', //
								//url : 'http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ%3D%3D&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json',
								url : '/api/external-data', //
								type : 'get',
								contentType : 'application/json; charset=UTF-8',
								dataType : "JSON",
								success : function(json) {
									alert('Data get successfully!');
									resultCode = json.response.header.resultCode;
									resultMsg = json.response.header.resultMsg;
									$(".resultCode").text("response.header.resultMsg :"+resultCode);
									$(".resultMsg").text("response.header.resultMsg :"+resultMsg);
									numOfRows=json.response.body.numOfRows;
									pageNo=json.response.body.pageNo;
									totalCount=json.response.body.totalCount;
									
									if (resultMsg == "NO_DATA") {
										$(".error").text("Error 없음");
									} else if (resultMsg == "OK") {
										$(".numOfRows").text("response.body.numOfRows :"+numOfRows);
										$(".pageNo").text("response.body.pageNo :"+pageNo);
										$(".totalCount").text("response.body.totalCount :"+totalCount);

										cat1 = json.response.body.items.item;
										var tableBody = $('#ajaxTable');
										let etc;
										let cat;
										$.each(cat1, function(index, item) {
											etc="";
											var newRow = $('<tr></tr>');
											newRow.append($('<td></td>').text(item.rnum));
											newRow.append($('<td></td>').text(item.code));
											newRow.append($('<td></td>').text(item.name));
											if((item.code).length=3) {
												cat = "cat2";
											}else if((item.code).length=5){
												cat = "cat3";
											}
											//etc = "<button type='button' onclick=\"myAjaxFunction('"+cat+"','"+item.code+"')\">중분류 조회</button>";
											etc = "<button type='button' onclick='myAjaxFunction1()'>중분류 조회</button>";
											newRow.append($('<td></td>').html(etc));

											tableBody.append(newRow);
										});

									}

								},
								error : function(xhr, textStatus, errorThrown) {
									alert('Error: ' + errorThrown);
									$(".error").html(
											"<div>" + textStatus + " (HTTP-" + xhr.status + " / "
													+ errorThrown + ")</div>");
								}
							});
						});
				//proxy 대분류 조회 끝
				//cat1 대분류 저장
				$(".saveCat1").click(
						function(event) {
							alert("sending....");
							//event.preventDefault();
							// Ajax 
							$.ajax({
								url : '/ajax/insertAPI_cat_code', // 
								type : 'POST',
								contentType : 'application/json',
								data: JSON.stringify(cat1),
								//dataType : "JSON",
								success : function(response) {
									alert('Data sent successfully!');
								},
								error : function(xhr, Status, error) {
									alert('Error: ' + error);
								}
							});
						});							
				
				function myAjaxFunction(cat,code) {
					alert('myAjaxFunction excuting....');					
					
					$.ajax({
						url : '/api/external-data', 
						type : 'get',
						contentType : 'application/json; charset=UTF-8',
						data:{
							cat: cat,
							itemCode: code
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

								$.each(cat2, function(index, item) {
									
									var newRow = $('<tr></tr>');
									newRow.append($('<td></td>').text(item.rnum));
									newRow.append($('<td></td>').text(item.code));
									newRow.append($('<td></td>').text(item.name));
									

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
				
				
			});
</script>
</head>
<body>
	<h1>API_CAT_CODE(분류코드)</h1>
	<button type="button" id="searchCat1" class="searchCat1">대분류 조회</button>
	<button type="button" id="saveCat1" class="saveCat1">대분류 저장</button>
	<br>

	<button type="button" id="proxyCat1" class="proxyCat1">proxy대분류 조회</button>
	<button type="button" id="saveCat1" class="saveCat1">대분류 저장</button>
	<br>
	<button type="button" id="searchCat2" class="searchCat2" data-category="cat2">중분류 조회</button>
	<button type="button" onclick="saveFunction()" id="saveCat2" class="saveCat2" data-category="cat2">중분류 저장</button>
	<br>
	<button type="button" id="searchCat3" class="searchCat3">소분류 조회</button>
	<button type="button" onclick="saveFunction()" id="saveCat3" class="saveCat3">소분류 저장</button>
	<hr>
	<div class="resultCode"></div>
	<div class="resultMsg"></div>
	<div class="numOfRows"></div>
	<div class="pageNo"></div>
	<div class="totalCount"></div>

	<div class="result"></div>
	<div class="error"></div>
	<div class="table"></div>
	<table id="ajaxTable" border=1>
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
<hr>
	<div class="resultCode2"></div>
	<div class="resultMsg2"></div>
	<div class="numOfRows2"></div>
	<div class="pageNo2"></div>
	<div class="totalCount2"></div>	
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
</body>
</html>
