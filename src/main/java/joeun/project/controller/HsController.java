package joeun.project.controller; //미자막 이름에 웹 페이지 url에 표시됨


import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;

import joeun.project.dto.HsFreeBoardDto;
import joeun.project.dto.HsfaqDto;
import joeun.project.dto.HsplusDto;
import joeun.project.service.HsFreeBoardService;
import joeun.project.service.HsfaqService;
import joeun.project.service.HsplusService;
import joeun.project.vo.naverLoginVo;

/**
 * Handles requests for the application home page.
 */
@Controller // 컽트롤러 선언 어노테이션
public class HsController {
	private naverLoginVo naverloginVo;
	private String apiResult = null;
	
	@Autowired
	private HsfaqService service;
	
	@Autowired
	private HsplusService pservice;
	
	 @Autowired
	 private HsFreeBoardService freeBoardService;
	
	@Autowired
	private void setnaverLoginVo(naverLoginVo naverloginVo) {
		this.naverloginVo = naverloginVo;
	}
	
	

	private static final Logger logger = LoggerFactory.getLogger(HsController.class);

	private static final String KAKAO_API_KEY = "80b743889e1ed34eda8757563a0fb1ae";
	private static final String naverapikey = "ZnpxW9Rsk0B314ZmICEM";
	private static final String navercallbackadress = "http://localhost:8081/naver/callback";
	private static final String naverserviceadress = "http://localhost:8081";
	private static final String clientId = "ZnpxW9Rsk0B314ZmICEM";
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	/*
	 * @RequestMapping(value = "/index", method = RequestMethod.GET) public String
	 * index(Model model) throws Exception { model.addAttribute("faq",
	 * service.select()); return "/index";// 이동할 페이지 : +.jsp }
	 */

	@RequestMapping(value = "/js/login", method = {RequestMethod.GET,RequestMethod.POST })
	public String login(Model model, ModelMap modelmap ,HttpSession session) {
		String naverAuthUrl = naverloginVo.getAuthorizationUrl(session);
		System.out.println("네이버"+naverAuthUrl);
		modelmap.addAttribute("url",naverAuthUrl);
		model.addAttribute("kakaoApiKey", KAKAO_API_KEY);
		model.addAttribute("naverApiKey", naverapikey);
		model.addAttribute("naverCallBackAdress", navercallbackadress);
		model.addAttribute("naverServiceAdress", naverserviceadress);
		model.addAttribute("naverclientId",clientId);
		if (session.getAttribute("user_id") != null) {
            // 세션에 로그인 사용자 정보가 있을 경우
            session.invalidate(); // 세션 무효화
            return "redirect:/js/login"; // 로그아웃 후 리다이렉트
        }
		return "js/login";
	}
	
	

	/*
	 * @RequestMapping(value = "/kakao", method = RequestMethod.GET) public String
	 * kakao(Locale locale, Model model) {
	 * 
	 * logger.info("Welcome home! The client locale is {}.", locale); return
	 * "js/kakao";// 이동할 페이지 : +.jsp }
	 */

	/*
	 * @RequestMapping(value = "/js/myPage", method = RequestMethod.GET) public
	 * String myPage(HttpSession session, Model model) { String user_id = (String)
	 * session.getAttribute("user_id"); if (user_id == null) { return
	 * "redirect:/js/login"; } return "js/myPage"; }
	 */

	

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session,HttpServletResponse response) {
		// 세션에서 사용자 정보를 가져옵니다.
		String user_id = (String) session.getAttribute("user_id");

		if (user_id != null) {
		// 세션 정보가 없을 경우 메인 페이지로 리디렉션
			System.out.println("로그아웃시 세션 값"+user_id);
			Cookie autoLoginCookie = new Cookie("autoLogin", null);
		       autoLoginCookie.setPath("/");
		       autoLoginCookie.setMaxAge(0); // 쿠키를 즉시 삭제
		       autoLoginCookie.setSecure(true); // HTTPS 전송만 허용
		       response.addCookie(autoLoginCookie);
		return "redirect:/js/login";
		}
		 
		return "rediect:/js/logout";
	}
	

	/*
	 * @RequestMapping(value = "/js/logout", method = RequestMethod.GET) public
	 * String logout1(HttpSession session, Model model) {
	 * System.out.println("logout 입장"); session.invalidate(); // 세션 전체 삭제
	 * System.out.println("Session invalidated"); return "redirect:/js/login"; }
	 */
	
	

	@RequestMapping(value = "/kakao/callback", method = RequestMethod.POST)
	public String kakaoCallback(@RequestParam("accessToken") String accessToken, HttpSession session, Model model) {
	    // 카카오 사용자 정보를 가져오기 위한 API 엔드포인트
	    String userInfoEndpoint = "https://kapi.kakao.com/v2/user/me";
	    RestTemplate restTemplate = new RestTemplate();

	    // 카카오 API 호출에 사용할 HTTP 헤더 설정
	    HttpHeaders headers = new HttpHeaders();
	    headers.set("Authorization", "Bearer " + accessToken);

	    // 헤더와 함께 HTTP GET 요청을 생성
	    HttpEntity<String> entity = new HttpEntity<>(headers);

	    // 카카오 사용자 정보를 가져오기 위해 HTTP GET 요청을 실행
	    ResponseEntity<String> response = restTemplate.exchange(userInfoEndpoint, HttpMethod.GET, entity, String.class);
	    String responseBody = response.getBody();

	    // JSON 응답에서 사용자 정보 추출
	    JSONObject jsonObj = new JSONObject(responseBody);
	    String nickname = jsonObj.getJSONObject("properties").getString("nickname"); // 사용자 닉네임
	    String profileImage = jsonObj.getJSONObject("properties").getString("profile_image"); // 프로필 이미지 URL

	    // 사용자 정보를 바탕으로 고유 식별자(해시값) 생성
	    String uniqueIdentifier = generateHash(nickname ); // + profileImage 원래 포함 됐는데 길어서 뺌
	    System.out.println("세션값 : " + uniqueIdentifier);

	    // 세션에 사용자 고유 식별자 저장
	    session.setAttribute("user_id", uniqueIdentifier);
	    session.setAttribute("auth", 0);
	    session.setAttribute("not", "Y");

	    // 로그인 성공 후 index.jsp로 리디렉션
	    return "redirect:/";
	}

	// SHA-256 해시 생성 메소드
	private String generateHash(String input) {
	    try {
	        // SHA-256 해시 알고리즘 인스턴스 생성
	        MessageDigest digest = MessageDigest.getInstance("SHA-256");
	        // 입력 문자열의 해시값 계산
	        byte[] encodedHash = digest.digest(input.getBytes(StandardCharsets.UTF_8));
	        StringBuilder hexString = new StringBuilder(2 * encodedHash.length);
	        // 바이트 배열을 헥사 문자열로 변환
	        for (byte b : encodedHash) {
	            String hex = Integer.toHexString(0xff & b);
	            if (hex.length() == 1) {
	                hexString.append('0');
	            }
	            hexString.append(hex);
	        }
	        return hexString.toString();
	    } catch (Exception e) {
	        throw new RuntimeException(e); // 예외 발생 시 런타임 예외 던지기
	    }
	}

	@RequestMapping(value = "/naver/callback", method = {RequestMethod.GET, RequestMethod.POST})
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
	    System.out.println("여기는 callback");

	    // 네이버 OAuth2 인증을 통해 액세스 토큰을 가져오기
	    OAuth2AccessToken oauthToken;
	    oauthToken = naverloginVo.getAccessToken(session, code, state);

	    // 액세스 토큰을 사용하여 사용자 정보를 가져오기
	    String apiResult = naverloginVo.getUserProfile(oauthToken);
	    model.addAttribute("result", apiResult);

	    // JSON 응답에서 사용자 정보 추출
	    JSONObject jsonObj = new JSONObject(apiResult);
	    JSONObject responseObj = jsonObj.getJSONObject("response");

	    // 네이버 이메일 주소 추출 (권한이 있는 경우)
	    String email = responseObj.has("email") ? responseObj.getString("email") : "권한 없음";

	    // 세션에 네이버 사용자 이메일 저장
	    session.setAttribute("user_id", email);
	    session.setAttribute("auth", 0);
	    session.setAttribute("not", "Y");

	    System.out.println("네이버 이메일: " + email);

	    // 로그인 성공 후 index.jsp로 이동
	    return "redirect:/";
	}


	@RequestMapping(value = "/UNoticeBoard", method = RequestMethod.GET)
	public String selectU(HttpSession session,Model model) throws Exception {
			Integer status = (Integer) session.getAttribute("auth");

		    if (status == null || status == 0 || status == 2) {
		        // 상태가 0 또는 null일 경우 UNoticeBoard 페이지로 이동
		    	model.addAttribute("faq", service.selectByStatusZero());
		    	System.out.println("세션값은? : "+status);
		        return "hs/UNoticeBoard";
		    } else if (status == 1) {
		        // 상태가 1일 경우 BNoticeBoard 페이지로 이동
		    	System.out.println("세션값은? : "+status);
		        return "redirect:/BNoticeBoard";
		    }
		    else {
		        // 기본 페이지로 리디렉션
		    	System.out.println(status);
		        return "hs/UNoticeBoard";
		    }
	}
	
	@RequestMapping(value = "/BNoticeBoard", method = RequestMethod.GET)
	public String selectB(Model model) throws Exception {
		model.addAttribute("faq", service.selectBusiness());
		return "hs/BNoticeBoard";
	}

	

	@RequestMapping(value = "/Uannouncement", method = RequestMethod.GET)
	public String Uannouncement(HttpSession session,@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "size", defaultValue = "10") int size, Model model) throws Exception {

		Integer status = (Integer) session.getAttribute("auth");

	    if (status == null || status == 0 || status == 1 || status == 2) {
	        // 상태가 0 또는 null일 경우 UNoticeBoard 페이지로 이동
	    	// 페이지네이션 처리
			int offset = (page - 1) * size;

			// 데이터 가져오기 (공지사항만)
			ArrayList<HsfaqDto> announcements = service.selectAnnouncementsWithPagination(offset, size);

			// 전체 항목 수 가져오기
			int totalCount = service.getTotalFaqCount(); // 전체 항목 수는 공지사항만 고려하지 않습니다.
			int totalPages = (int) Math.ceil((double) totalCount / size);

			// 모델에 데이터 추가
			model.addAttribute("faq", announcements);
			model.addAttribute("currentPage", page);
			model.addAttribute("totalPages", totalPages);

			// 뷰 이름 반환
			return "hs/Uannouncement";
	    }
	    else {
	    	
	        return "hs/Uannouncement";
	    }
		
	}


	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert_go() {
		return "hs/insert";
	}
	
	@RequestMapping(value = "/plus", method = RequestMethod.GET)
	public String plus() {
		return "hs/plus";
	}
	
	@RequestMapping(value = "/submitInquiry", method = RequestMethod.GET)
	public String plusmain(HttpSession session, HsplusDto plusdto, RedirectAttributes rttr) throws Exception {
		String id = (String) session.getAttribute("user_id");
		pservice.insert(plusdto);
		rttr.addFlashAttribute("msg", "등록하였습니다.");
		return "redirect:/inquiry";
	}
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String inquiry(HttpSession session,Model model) throws Exception{
		model.addAttribute("plus", pservice.select());
		return "hs/inquiry";
	}
	
	@RequestMapping(value = "/update_user", method = RequestMethod.POST)
	public String update_user(@ModelAttribute HsplusDto plusdto, RedirectAttributes rttr) throws Exception {
	    pservice.update_user(plusdto);
	    rttr.addFlashAttribute("msg", "답변등록 완료");
	    return "redirect:/inquiry";
	}
	
	@RequestMapping(value = "/delete_user", method = RequestMethod.POST)
	public String delete_user(Model model, @RequestParam("query_id") int query_id, @RequestParam("id") String id, RedirectAttributes rttr) throws Exception {
	    pservice.delete_user(query_id, id);
	    rttr.addFlashAttribute("msg", "삭제가 완료되었습니다.");
	    return "redirect:/inquiry";
	}



	@RequestMapping(value = "/sh/admin/update", method = RequestMethod.GET)
	public String update(Model model, HsfaqDto faqdto, RedirectAttributes rttr) throws Exception {
		service.update(faqdto);
		rttr.addFlashAttribute("msg", "수정이 완료되었습니다.");
		return "redirect:/sh/admin/boardAdm";
	}
	
	@RequestMapping(value = "/sh/admin/announcement/update", method = RequestMethod.GET)
	public String updateA(Model model, HsfaqDto faqdto, RedirectAttributes rttr) throws Exception {
		service.update(faqdto);
		rttr.addFlashAttribute("msg", "수정이 완료되었습니다.");
		return "redirect:/sh/admin/boardAdm";
	}

	@RequestMapping(value = "/sh/admin/insert_Q", method = RequestMethod.GET)
	public String insert(Model model, HsfaqDto faqdto, RedirectAttributes rttr) throws Exception {
		service.insert(faqdto);
		rttr.addFlashAttribute("msg", "추가되었습니다.");
		return "redirect:/sh/admin/boardAdm";
	}

	@RequestMapping(value = "/sh/admin/delete", method = RequestMethod.GET)
	public String delete(Model model, int id, RedirectAttributes rttr) throws Exception {
		service.delete(id);
		rttr.addFlashAttribute("msg", "삭제가 완료되었습니다.");
		return "redirect:/sh/admin/boardAdm";
	}

	@RequestMapping(value = "/view_announcement", method = RequestMethod.GET)
	public String viewAnnouncement(Model model, @RequestParam(value = "id") Integer id) throws Exception {
		if (id == null) {
			throw new IllegalArgumentException("ID is required");
		}
		HsfaqDto faq = service.findById(id);
		HsfaqDto previous = service.findPrevious(id);
		HsfaqDto next = service.findNext(id);

		model.addAttribute("faq", faq);
		model.addAttribute("previous", previous);
		model.addAttribute("next", next);

		return "hs/view_announcement";
	}

	@RequestMapping(value = "/view_announcement_A", method = RequestMethod.GET)
	public String viewAnnouncementA(Model model, @RequestParam(value = "id") Integer id) throws Exception {
		if (id == null) {
			throw new IllegalArgumentException("ID is required");
		}
		HsfaqDto faq = service.findById(id);
		model.addAttribute("faq", faq);
		return "hs/view_announcement_A";
	}
	
	 // 게시글 목록 조회
    @RequestMapping(value = "/freeboard", method = RequestMethod.GET)
    public String getAllBoards(@RequestParam(value = "page", defaultValue = "1") int page,
                               @RequestParam(value = "size", defaultValue = "10") int size, 
                               Model model) throws Exception {
        // 페이지네이션 처리
        int offset = (page - 1) * size;

        // 데이터 가져오기
        ArrayList<HsFreeBoardDto> boards = freeBoardService.selectAllWithPagination(offset, size);

        // 전체 항목 수 가져오기
        int totalCount = freeBoardService.getTotalBoardCount();
        int totalPages = (int) Math.ceil((double) totalCount / size);
        System.out.println("Boards: " + boards);
        System.out.println("Total Count: " + totalCount);


        // 모델에 데이터 추가
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("boards", boards);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);

        return "hs/freeboard"; // JSP 페이지 이름
    }

    // 게시글 작성 페이지 이동
    @RequestMapping(value = "/freeboard/write", method = RequestMethod.GET)
    public String writeBoard() {
        return "hs/boardwrite"; // 게시글 작성 페이지 JSP
    }

    // 게시글 작성
 // 게시글 작성
    @RequestMapping(value = "/addBoard", method = RequestMethod.POST)
    public String writeBoard(@ModelAttribute HsFreeBoardDto boardDto, 
                              HttpSession session, 
                              RedirectAttributes rttr) throws Exception {
        // 세션에서 user_id 가져와서 작성자 설정
        String userId = (String) session.getAttribute("user_id");
        boardDto.setWriter(userId); // 게시글 작성자 설정

        // 게시글 삽입
        freeBoardService.insert(boardDto);

        // 성공 메시지 전달
        rttr.addFlashAttribute("msg", "게시글이 등록되었습니다.");
        return "redirect:/freeboard"; // 자유게시판 목록 페이지로 리디렉션
    }


    // 게시글 수정 페이지 이동
    @RequestMapping(value = "/freeboard/edit", method = RequestMethod.GET)
    public String editBoard(@RequestParam("id") Integer id, Model model) throws Exception {
        if (id == null) {
            throw new IllegalArgumentException("ID is required");
        }
        HsFreeBoardDto board = freeBoardService.selectById(id);
        model.addAttribute("board", board);
        return "hs/freeboard_edit"; // 게시글 수정 페이지 JSP
    }

    // 게시글 수정
    @RequestMapping(value = "/freeboardedit", method = RequestMethod.POST)
    public String editBoard(@ModelAttribute HsFreeBoardDto boardDto, 
                             RedirectAttributes rttr) throws Exception {
        freeBoardService.update(boardDto);
        rttr.addFlashAttribute("msg", "게시글이 수정되었습니다.");
        return "redirect:/freeboard";
    }

    // 게시글 삭제
    @RequestMapping(value = "/freeboard/delete", method = RequestMethod.POST)
    public String deleteBoard(@RequestParam("id") Integer id, 
                               RedirectAttributes rttr) throws Exception {
        if (id == null) {
            throw new IllegalArgumentException("ID is required");
        }
        freeBoardService.delete(id);
        rttr.addFlashAttribute("msg", "게시글이 삭제되었습니다.");
        return "redirect:/freeboard";
    }

    // 게시글 상세 조회
    @RequestMapping(value = "/freeboard/view", method = RequestMethod.GET)
    public String viewBoard(@RequestParam("id") Integer id, Model model) throws Exception {
    	freeBoardService.incrementViews(id);
        if (id == null) {
            throw new IllegalArgumentException("ID is required");
        }
        HsFreeBoardDto board = freeBoardService.selectById(id);
        model.addAttribute("board", board); // 이 부분이 중요합니다.
        return "hs/freeboardview"; // 게시글 상세 조회 페이지 JSP
    }
    
    @RequestMapping(value = "/freeboard/like", method = RequestMethod.POST)
    public String likeBoard(@RequestParam("id") Integer id) throws Exception {
        freeBoardService.incrementLikes(id);
        return "success";
    }


}
