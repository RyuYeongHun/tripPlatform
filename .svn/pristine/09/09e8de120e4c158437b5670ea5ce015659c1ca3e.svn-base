package joeun.project.controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import joeun.project.dto.API_commonDto;
import joeun.project.dto.API_contentIdType;
import joeun.project.dto.API_contentImageDto;
import joeun.project.dto.API_intro14Dto;
import joeun.project.dto.API_introduceDto;
import joeun.project.service.RestServiceI;

@Controller
@RequestMapping("/api")
public class ProxyController {
	private final RestTemplate restTemplate;
	@Autowired
	RestServiceI restService;

	public ProxyController() {
		this.restTemplate = new RestTemplate();
	}

	@GetMapping("/external-data") // 공공데이타에서 api_cat_code 불러오기
	public ResponseEntity<String> getExternalData(@RequestParam(required = false) String cat,
			@RequestParam(required = false) String itemCode) {
		/*
		 * String url = "http://apis.data.go.kr/B551011/KorService1/categoryCode1";
		 * String serviceKey =
		 * "59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ==";
		 * 
		 * UriComponentsBuilder uriBuilder = UriComponentsBuilder.fromHttpUrl(url)
		 * .queryParam("serviceKey", serviceKey) .queryParam("numOfRows", 20)
		 * .queryParam("pageNo", 1) .queryParam("MobileOS", "ETC")
		 * .queryParam("MobileApp", "AppTest") .queryParam("_type", "json");
		 * System.out.println("uriBuilder.toUriString(): "+uriBuilder.toUriString());
		 * HttpEntity<String> response = restTemplate.exchange(uriBuilder.toUriString(),
		 * HttpMethod.GET, null, String.class); // der.toUriString():
		 * http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=
		 * 59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ
		 * %253D%253D&numOfRows=20&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json //
		 * http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=
		 * 59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ
		 * %3D%3D&numOfRows=20&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json //
		 * 59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ
		 * %3D%3D
		 */
		System.out.println("cat: " + cat);
		// 초기값 셋팅하기
		String serviceKey = "KyKlcn82QcUpq39lKg0eLESMZb9SG+PcmYrQWzSAHY7C2CR0JYlhtyO1Ka5Aam6bU0W5KiXHsJq/L9j5y6kbUA==";
		String numOfRows = "100";
		String pageNo = "1";
//		String myUrl="http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ==&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json";
		String myUrl = "http://apis.data.go.kr/B551011/KorService1/categoryCode1?" + "serviceKey=" + serviceKey
				+ "&numOfRows=" + numOfRows + "&pageNo=" + pageNo + "&MobileOS=ETC&MobileApp=AppTest&_type=json";
		if (cat != null) {
			if (cat.equals("cat2")) {
				myUrl += "&cat1=" + itemCode;
			} else if (cat.equals("cat3")) {
				String itemCode1 = itemCode.substring(0, 3);
				myUrl += "&cat1=" + itemCode1;
				String itemCode2 = itemCode.substring(0, 5);
				myUrl += "&cat2=" + itemCode2;
			}
			System.out.println("myUrl: " + myUrl);

		}

		// 공공API 호출해서 값 받아오기
		HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);

		System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.
		// 받아온 값 한글로 인코딩하기
		String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
		System.out.println("response.body: " + body);
		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(body, headers, HttpStatus.OK);

		/*
		 * // return ResponseEntity.ok(response.getBody()); // return
		 * ResponseEntity.ok().body(response.getBody()); // return new
		 * ResponseEntity<>(new String(response.getBody().getBytes(), charset),
		 * headers);
		 */ }

	@GetMapping("/external-data2") // 공공데이타에서 api_area_code 불러오기
	public ResponseEntity<String> getExternalData2(@RequestParam(required = false) String url,
			@RequestParam(required = false) String serviceKey, @RequestParam(required = false) String numOfRows,
			@RequestParam(required = false) String pageNo, @RequestParam(required = false) String areaCode) {

		// 초기값 셋팅하기
//		String serviceKey = serviceKey;
//		String numOfRows = numOfRows;
//		String pageNo = "1";
//지역코드		http://apis.data.go.kr/B551011/KorService1/areaCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ==&numOfRows=50&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json
//시군구코드  http://apis.data.go.kr/B551011/KorService1/areaCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ==&areaCode=1&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json
		String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
				+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
		if (areaCode != null && !areaCode.equals("")) {
			myUrl += "&areaCode=" + areaCode;
		}
		System.out.println("myUrl: " + myUrl);
		// 공공API 호출해서 값 받아오기
		HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);

		System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.
		// 받아온 값 한글로 인코딩하기
		String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
		System.out.println("response.body: " + body);
		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(body, headers, HttpStatus.OK);
	}

	@GetMapping("/bolgguri_proxy")
	public ResponseEntity<String> bolgguri_proxy(@RequestParam(required = false) String url,
			@RequestParam(required = false) String serviceKey, @RequestParam(required = false) String numOfRows,
			@RequestParam(required = false) String pageNo, @RequestParam(required = false) String areaCode,
			@RequestParam(required = false) String contentTypeId) {

		String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
				+ "&contentTypeId=" + contentTypeId + "&arrange=A&MobileOS=ETC&MobileApp=AppTest&_type=json";

		System.out.println("myUrl: " + myUrl);
		// 공공API 호출해서 값 받아오기
		HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);

		System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.
		// 받아온 값 한글로 인코딩하기
		String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
		System.out.println("response.body: " + body);
		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(body, headers, HttpStatus.OK);
	}

	@GetMapping("/introduce_proxy")
	public ResponseEntity<String> introduce_proxy(Integer mode, @RequestParam(required = false) String url,
			@RequestParam(required = false) String serviceKey, @RequestParam(required = false) String numOfRows,
			@RequestParam(required = false) String pageNo, @RequestParam(required = false) String areaCode,
			@RequestParam(required = false) String contentTypeId, @RequestParam(required = false) String contentId) {

		String lastBody = null;
		if (mode == 1) { // 조회
			String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
					+ "&contentTypeId=" + contentTypeId + "&contentId=" + contentId
					+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
			System.out.println("myUrl: " + myUrl);

			// 공공API 호출해서 값 받아오기
			HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
			System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

			// 받아온 값 한글로 인코딩하기
			String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
			lastBody = body;
			System.out.println("response.body: " + body);

		} else if (mode == 2) { // 자동 조회 및 저장
			// contentId 값 가져오기:
			List<String> contentIds = new ArrayList<String>();
			contentIds = restService.selectContentId();
			for (int i = 0; i < 500; i++) {
				String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
						+ "&contentTypeId=" + contentTypeId + "&contentId=" + contentIds.get(i)
						+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
				System.out.println("myUrl: " + myUrl);

				// 공공API 호출해서 값 받아오기
				HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
				System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

				// 받아온 값 한글로 인코딩하기
				String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
				lastBody = body;
				System.out.println("response.body: " + body);

				ObjectMapper objectMapper = new ObjectMapper();// ObjectMapper를 이용하여 JSON 데이타를 java dto로 변환
//				String jsonString = "{ \"response\": { \"header\": { \"resultCode\": \"0000\", \"resultMsg\": \"OK\" }, \"body\": { \"items\": { \"item\": [{ \"contentid\": \"2769697\", \"contenttypeid\": \"12\", \"heritage1\": \"0\", \"heritage2\": \"0\", \"heritage3\": \"0\", \"infocenter\": \"043-543-6282\", \"opendate\": \"\", \"restdate\": \"화요일\", \"expguide\": \"숲 속 체험 프로그램 / 목재 문화 체험 프로그램\", \"expagerange\": \"\", \"accomcount\": \"\", \"useseason\": \"\", \"usetime\": \"- 일일개장 09:00~18:00\\u003Cbr\\u003E\\n- 숙박시설 15:00~익일11:00\", \"parking\": \"있음\", \"chkbabycarriage\": \"없음\", \"chkpet\": \"없음\", \"chkcreditcard\": \"없음\" }] }, \"numOfRows\": 1, \"pageNo\": 1, \"totalCount\": 1 } } }";
				String jsonString = body;
				try {
					// JSON 데이터를 JsonNode로 파싱
					JsonNode root = objectMapper.readTree(jsonString);
					// 'item' 노드를 찾아 자바 객체로 변환
					JsonNode itemNode = root.path("response").path("body").path("items").path("item").get(0);
					// JsonNode numOfRwos =
					// root.path("response").path("body").path("numOfRows").get("key");
					// System.out.println("numOfRwos.isNumber() :"+numOfRwos.isNumber());
					if (itemNode == null || itemNode.isMissingNode()) {
						restService.insertAPI_IntroduceContentId(contentIds.get(i));
						continue;
						// throw new IllegalStateException("Item node is missing");
					}
					// Item item = objectMapper.treeToValue(itemNode, Item.class);

					API_introduceDto dto = objectMapper.treeToValue(itemNode, API_introduceDto.class);
					System.out.println("API_introduceDto dto: " + dto);
					restService.insertAPI_Introduce(dto);
				} catch (JsonProcessingException e) {
					System.out.println("JsonProcessingException~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("API_introduceDto dto 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (NullPointerException e) {
					System.out.println("API_introduceDto NullPointerException 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				}
			}
		} else if (mode == 3) { // 자동 조회 및 저장
			List<API_contentIdType> contentIds2 = new ArrayList<API_contentIdType>();
			contentIds2 = restService.selectCommonContentId2();
			for (int i = 0; i < 10; i++) {
				String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
						+ "&contentTypeId=" + contentIds2.get(i).getContentTypeId() + "&contentId=" + contentIds2.get(i).getContentId()
						+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
				System.out.println("myUrl: " + myUrl);

				// 공공API 호출해서 값 받아오기
				HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
				System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

				// 받아온 값 한글로 인코딩하기
				String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
				lastBody = body;
				System.out.println("response.body: " + body);

				ObjectMapper objectMapper = new ObjectMapper();// ObjectMapper를 이용하여 JSON 데이타를 java dto로 변환
//				String jsonString = "{ \"response\": { \"header\": { \"resultCode\": \"0000\", \"resultMsg\": \"OK\" }, \"body\": { \"items\": { \"item\": [{ \"contentid\": \"2769697\", \"contenttypeid\": \"12\", \"heritage1\": \"0\", \"heritage2\": \"0\", \"heritage3\": \"0\", \"infocenter\": \"043-543-6282\", \"opendate\": \"\", \"restdate\": \"화요일\", \"expguide\": \"숲 속 체험 프로그램 / 목재 문화 체험 프로그램\", \"expagerange\": \"\", \"accomcount\": \"\", \"useseason\": \"\", \"usetime\": \"- 일일개장 09:00~18:00\\u003Cbr\\u003E\\n- 숙박시설 15:00~익일11:00\", \"parking\": \"있음\", \"chkbabycarriage\": \"없음\", \"chkpet\": \"없음\", \"chkcreditcard\": \"없음\" }] }, \"numOfRows\": 1, \"pageNo\": 1, \"totalCount\": 1 } } }";
				String jsonString = body;
				try {
					// JSON 데이터를 JsonNode로 파싱
					JsonNode root = objectMapper.readTree(jsonString);
					// 'item' 노드를 찾아 자바 객체로 변환
					JsonNode itemNode = root.path("response").path("body").path("items").path("item").get(0);
					// JsonNode numOfRwos =
					// root.path("response").path("body").path("numOfRows").get("key");
					// System.out.println("numOfRwos.isNumber() :"+numOfRwos.isNumber());
					if (itemNode == null || itemNode.isMissingNode()) {
						restService.insertAPI_IntroduceContentId(contentIds2.get(i).getContentId());
						continue;
						// throw new IllegalStateException("Item node is missing");
					}
					// Item item = objectMapper.treeToValue(itemNode, Item.class);

					API_introduceDto dto = objectMapper.treeToValue(itemNode, API_introduceDto.class);
					System.out.println("API_introduceDto dto: " + dto);
					restService.insertAPI_Introduce(dto);
				} catch (JsonProcessingException e) {
					System.out.println("JsonProcessingException~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("API_introduceDto dto 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (NullPointerException e) {
					System.out.println("API_introduceDto NullPointerException 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				}
			}
		}

		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(lastBody, headers, HttpStatus.OK);
	}
	
	@GetMapping("/intro14_proxy")
	public ResponseEntity<String> intro14_proxy(Integer mode, @RequestParam(required = false) String url,
			@RequestParam(required = false) String serviceKey, @RequestParam(required = false) String numOfRows,
			@RequestParam(required = false) String pageNo, @RequestParam(required = false) String areaCode,
			@RequestParam(required = false) String contentTypeId, @RequestParam(required = false) String contentId) {

		String lastBody = null;
		if (mode == 1) { // 조회
			String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
					+ "&contentTypeId=" + contentTypeId + "&contentId=" + contentId
					+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
			System.out.println("myUrl: " + myUrl);

			// 공공API 호출해서 값 받아오기
			HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
			System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

			// 받아온 값 한글로 인코딩하기
			String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
			lastBody = body;
			System.out.println("response.body: " + body);

		} else if (mode == 2) { // 자동 조회 및 저장
			// contentId 값 가져오기:
			List<String> contentIds = new ArrayList<String>();
			contentIds = restService.intro14ContentId();

			for (int i = 0; i < 500; i++) {
				String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
						+ "&contentTypeId=" + contentTypeId + "&contentId=" + contentIds.get(i)
						+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
				System.out.println("myUrl: " + myUrl);

				// 공공API 호출해서 값 받아오기
				HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
				System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

				// 받아온 값 한글로 인코딩하기
				String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
				lastBody = body;
				System.out.println("response.body: " + body);

				ObjectMapper objectMapper = new ObjectMapper();// ObjectMapper를 이용하여 JSON 데이타를 java dto로 변환
//				String jsonString = "{ \"response\": { \"header\": { \"resultCode\": \"0000\", \"resultMsg\": \"OK\" }, \"body\": { \"items\": { \"item\": [{ \"contentid\": \"2769697\", \"contenttypeid\": \"12\", \"heritage1\": \"0\", \"heritage2\": \"0\", \"heritage3\": \"0\", \"infocenter\": \"043-543-6282\", \"opendate\": \"\", \"restdate\": \"화요일\", \"expguide\": \"숲 속 체험 프로그램 / 목재 문화 체험 프로그램\", \"expagerange\": \"\", \"accomcount\": \"\", \"useseason\": \"\", \"usetime\": \"- 일일개장 09:00~18:00\\u003Cbr\\u003E\\n- 숙박시설 15:00~익일11:00\", \"parking\": \"있음\", \"chkbabycarriage\": \"없음\", \"chkpet\": \"없음\", \"chkcreditcard\": \"없음\" }] }, \"numOfRows\": 1, \"pageNo\": 1, \"totalCount\": 1 } } }";
				String jsonString = body;
				try {
					// JSON 데이터를 JsonNode로 파싱
					JsonNode root = objectMapper.readTree(jsonString);
					// 'item' 노드를 찾아 자바 객체로 변환
					JsonNode itemNode = root.path("response").path("body").path("items").path("item").get(0);
					// JsonNode numOfRwos =
					// root.path("response").path("body").path("numOfRows").get("key");
					// System.out.println("numOfRwos.isNumber() :"+numOfRwos.isNumber());
					if (itemNode == null || itemNode.isMissingNode()) {
						restService.insertAPI_Intro14_null(contentIds.get(i));
						continue;
						// throw new IllegalStateException("Item node is missing");
					}
					// Item item = objectMapper.treeToValue(itemNode, Item.class);

					API_intro14Dto dto = objectMapper.treeToValue(itemNode, API_intro14Dto.class);
					System.out.println("API_introduceDto dto: " + dto);
					restService.insertAPI_Intro14(dto);
				} catch (JsonProcessingException e) {
					System.out.println("JsonProcessingException~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("API_introduceDto dto 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (NullPointerException e) {
					System.out.println("API_introduceDto NullPointerException 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				}
			}
		}

		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(lastBody, headers, HttpStatus.OK);
	}
	

	@GetMapping("/API_image_proxy")
	public ResponseEntity<String> image_proxy(Integer mode, @RequestParam(required = false) String url,
			@RequestParam(required = false) String serviceKey, @RequestParam(required = false) String numOfRows,
			@RequestParam(required = false) String pageNo, @RequestParam(required = false) String areaCode,
			@RequestParam(required = false) Integer contentId) {
		System.out.println("Mode: " + mode);

		String lastBody = null;

		if (mode == 1) {
			String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
					+ "&contentId=" + contentId + "&imageYN=Y&subImageYN=Y"
					+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
			System.out.println("myUrl: " + myUrl);

			// 공공API 호출해서 값 받아오기
			HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);

			System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.
			// 받아온 값 한글로 인코딩하기
			String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
			System.out.println("response.body: " + body);
			// ajax에 보낼 헤더에 인코딩 설정 해주기
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
			// AJAX로 리턴해주기
			return new ResponseEntity<>(body, headers, HttpStatus.OK);

		} else if (mode == 2) {// 자동저장
			// contentId 값 가져오기:
			List<Integer> contentIds = new ArrayList<Integer>();
			contentIds = restService.selectImageContentId();
			// contentIds.size()
			for (int i = 0; i < 500; i++) {
				String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
						+ "&contentId=" + contentIds.get(i) + "&imageYN=Y&subImageYN=Y"
						+ "&MobileOS=ETC&MobileApp=AppTest&_type=json";
				System.out.println("myUrl: " + myUrl);

				// 공공API 호출해서 값 받아오기
				HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
				System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

				// 받아온 값 한글로 인코딩하기
				String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
				System.out.println("response.body: " + body);
				lastBody = body;

				ObjectMapper objectMapper = new ObjectMapper();// ObjectMapper를 이용하여 JSON 데이타를 java dto로 변환
//				String jsonString = "{ \"response\": { \"header\": { \"resultCode\": \"0000\", \"resultMsg\": \"OK\" }, \"body\": { \"items\": { \"item\": [{ \"contentid\": \"2769697\", \"contenttypeid\": \"12\", \"heritage1\": \"0\", \"heritage2\": \"0\", \"heritage3\": \"0\", \"infocenter\": \"043-543-6282\", \"opendate\": \"\", \"restdate\": \"화요일\", \"expguide\": \"숲 속 체험 프로그램 / 목재 문화 체험 프로그램\", \"expagerange\": \"\", \"accomcount\": \"\", \"useseason\": \"\", \"usetime\": \"- 일일개장 09:00~18:00\\u003Cbr\\u003E\\n- 숙박시설 15:00~익일11:00\", \"parking\": \"있음\", \"chkbabycarriage\": \"없음\", \"chkpet\": \"없음\", \"chkcreditcard\": \"없음\" }] }, \"numOfRows\": 1, \"pageNo\": 1, \"totalCount\": 1 } } }";
				String jsonString = body;
				try {
					// JSON 데이터를 JsonNode로 파싱
					JsonNode root = objectMapper.readTree(jsonString);
					int JSONnumOfRows = root.path("response").path("body").path("numOfRows").asInt();
					System.out.println("JSONnumOfRows: " + JSONnumOfRows);
					if (JSONnumOfRows == 0) {
						restService.insertAPI_imageContentIdNull(contentIds.get(i));
						continue;
					}

					// 'item' 노드를 찾아 자바 객체로 변환
					JsonNode itemsNode = root.path("response").path("body").path("items").path("item");
					List<API_contentImageDto> dtos = new ArrayList<API_contentImageDto>();

					if (itemsNode.isArray()) {
						for (JsonNode itemNode : itemsNode) {
							API_contentImageDto dto = objectMapper.treeToValue(itemNode, API_contentImageDto.class);
							dtos.add(dto);
						}
					}
					restService.insertAPI_contentImage(dtos);

				} catch (JsonProcessingException e) {
					System.out.println("JsonProcessingException~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("API_introduceDto dto 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (NullPointerException e) {
					System.out.println("API_introduceDto NullPointerException 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				}
			}
		} // else if 끝

		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(lastBody, headers, HttpStatus.OK);
	}

	@GetMapping("/common_proxy")
	public ResponseEntity<String> common_proxy(Integer mode, @RequestParam(required = false) String url,
			@RequestParam(required = false) String serviceKey, @RequestParam(required = false) String numOfRows,
			@RequestParam(required = false) String pageNo, @RequestParam(required = false) String areaCode,
			@RequestParam(required = false) String contentTypeId, @RequestParam(required = false) String contentId) {


		String lastBody = null;
		if (mode == 1) { // 조회
			String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
					+ "&contentTypeId=" + contentTypeId + "&contentId=" + contentId
					+ "&MobileOS=ETC&MobileApp=AppTest&_type=json&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";
			System.out.println("myUrl: " + myUrl);

			// 공공API 호출해서 값 받아오기
			HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
			System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

			// 받아온 값 한글로 인코딩하기
			String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
			lastBody = body;
			System.out.println("response.body: " + body);

		} else if (mode == 2) { // 자동 조회 및 저장
			// contentId 값 가져오기:
			List<String> contentIds = new ArrayList<String>();
			contentIds = restService.selectCommonContentId();
			
			for (int i = 0; i < 500; i++) {
				String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
						+ "&contentTypeId=" + contentTypeId + "&contentId=" + contentIds.get(i)
						+ "&MobileOS=ETC&MobileApp=AppTest&_type=json&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";
				System.out.println("myUrl: " + myUrl);

				// 공공API 호출해서 값 받아오기
				HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
				System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

				// 받아온 값 한글로 인코딩하기
				String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
				lastBody = body;
				System.out.println("response.body: " + body);

				ObjectMapper objectMapper = new ObjectMapper();// ObjectMapper를 이용하여 JSON 데이타를 java dto로 변환
//				String jsonString = "{ \"response\": { \"header\": { \"resultCode\": \"0000\", \"resultMsg\": \"OK\" }, \"body\": { \"items\": { \"item\": [{ \"contentid\": \"2769697\", \"contenttypeid\": \"12\", \"heritage1\": \"0\", \"heritage2\": \"0\", \"heritage3\": \"0\", \"infocenter\": \"043-543-6282\", \"opendate\": \"\", \"restdate\": \"화요일\", \"expguide\": \"숲 속 체험 프로그램 / 목재 문화 체험 프로그램\", \"expagerange\": \"\", \"accomcount\": \"\", \"useseason\": \"\", \"usetime\": \"- 일일개장 09:00~18:00\\u003Cbr\\u003E\\n- 숙박시설 15:00~익일11:00\", \"parking\": \"있음\", \"chkbabycarriage\": \"없음\", \"chkpet\": \"없음\", \"chkcreditcard\": \"없음\" }] }, \"numOfRows\": 1, \"pageNo\": 1, \"totalCount\": 1 } } }";
				String jsonString = body;
				try {
					// JSON 데이터를 JsonNode로 파싱
					JsonNode root = objectMapper.readTree(jsonString);
					// 'item' 노드를 찾아 자바 객체로 변환
					JsonNode itemNode = root.path("response").path("body").path("items").path("item").get(0);
					if (itemNode == null || itemNode.isMissingNode()) {
						restService.insertAPI_common_contentIdNull(contentIds.get(i));
						continue;
					}

					API_commonDto dto = objectMapper.treeToValue(itemNode, API_commonDto.class);
					System.out.println("API_commonDto dto: " + dto);
					restService.insertAPI_common(dto);
				} catch (JsonProcessingException e) {
					System.out.println("JsonProcessingException~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("API_introduceDto dto 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (NullPointerException e) {
					System.out.println("API_introduceDto NullPointerException 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				}
			}
		}else if (mode == 3) { // 자동 조회 및 저장2
			// contentId 값 가져오기:
			List<API_contentIdType> contentIds2 = new ArrayList<API_contentIdType>();
			contentIds2 = restService.selectCommonContentId2();
			for (int i = 0; i < 500; i++) {
				String myUrl = url + "?" + "serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&pageNo=" + pageNo
						+ "&contentTypeId=" + contentIds2.get(i).getContentTypeId() + "&contentId=" + contentIds2.get(i).getContentId()
						+ "&MobileOS=ETC&MobileApp=AppTest&_type=json&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";
				System.out.println("myUrl: " + myUrl);
				System.out.println("contentTypeId: " + contentIds2.get(i).getContentTypeId());
				System.out.println("contentId: " + contentIds2.get(i).getContentId());

				// 공공API 호출해서 값 받아오기
				HttpEntity<String> response = restTemplate.exchange(myUrl, HttpMethod.GET, null, String.class);
				System.out.println("response.getBody():" + response.getBody()); // 실제 응답 메세지 내용 확인.

				// 받아온 값 한글로 인코딩하기
				String body = new String(response.getBody().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
				lastBody = body;
				System.out.println("response.body: " + body);

				ObjectMapper objectMapper = new ObjectMapper();// ObjectMapper를 이용하여 JSON 데이타를 java dto로 변환
//				String jsonString = "{ \"response\": { \"header\": { \"resultCode\": \"0000\", \"resultMsg\": \"OK\" }, \"body\": { \"items\": { \"item\": [{ \"contentid\": \"2769697\", \"contenttypeid\": \"12\", \"heritage1\": \"0\", \"heritage2\": \"0\", \"heritage3\": \"0\", \"infocenter\": \"043-543-6282\", \"opendate\": \"\", \"restdate\": \"화요일\", \"expguide\": \"숲 속 체험 프로그램 / 목재 문화 체험 프로그램\", \"expagerange\": \"\", \"accomcount\": \"\", \"useseason\": \"\", \"usetime\": \"- 일일개장 09:00~18:00\\u003Cbr\\u003E\\n- 숙박시설 15:00~익일11:00\", \"parking\": \"있음\", \"chkbabycarriage\": \"없음\", \"chkpet\": \"없음\", \"chkcreditcard\": \"없음\" }] }, \"numOfRows\": 1, \"pageNo\": 1, \"totalCount\": 1 } } }";
				String jsonString = body;
				try {
					// JSON 데이터를 JsonNode로 파싱
					JsonNode root = objectMapper.readTree(jsonString);
					// 'item' 노드를 찾아 자바 객체로 변환
					JsonNode itemNode = root.path("response").path("body").path("items").path("item").get(0);
					if (itemNode == null || itemNode.isMissingNode()) {
						restService.insertAPI_common_contentIdNull(contentIds2.get(i).getContentId());
						continue;
					}

					API_commonDto dto = objectMapper.treeToValue(itemNode, API_commonDto.class);
					System.out.println("API_commonDto dto: " + dto);
					restService.insertAPI_common(dto);
				} catch (JsonProcessingException e) {
					System.out.println("JsonProcessingException~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("API_introduceDto dto 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				} catch (NullPointerException e) {
					System.out.println("API_introduceDto NullPointerException 에러~~~~~~~~~~~~~~~~~~~");
					e.printStackTrace();
				}
			}
		}

		// ajax에 보낼 헤더에 인코딩 설정 해주기
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
		// AJAX로 리턴해주기
		return new ResponseEntity<>(lastBody, headers, HttpStatus.OK);
//		return ResponseEntity.ok().contentType(MediaType.APPLICATION_JSON_UTF8)
//				.body(new JSONArray(nearBolgguri).toString());
	}

}
