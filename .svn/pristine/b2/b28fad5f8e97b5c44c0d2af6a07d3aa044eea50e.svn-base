package joeun.project.controller; //미자막 이름에 웹 페이지 url에 표시됨

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder; //비번암호화~ 라이브러리 추가ㅏㅏㅏ
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import joeun.project.dto.JsBiz_partnerDto;
import joeun.project.dto.JsUSER_listDto;
import joeun.project.service.JsIUSER_listService;
import joeun.project.service.JsIBiz_partnerService;

@Controller // 컽트롤러 선언 어노테이션
public class JsController {
	@Autowired
	private JsIUSER_listService USER_list;
	@Autowired
	private JsIBiz_partnerService biz_partner;
	@Autowired
	private JavaMailSenderImpl mailSender;
	private static final Logger logger = LoggerFactory.getLogger(JsController.class);
	private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	  @RequestMapping(value = "/index", method = RequestMethod.GET) //해더 "방방곡곡" 클릭하면 index로
	  	public String index() {
		  return "/index";//이동할 페이지 : +.jsp }
	  }
	  @RequestMapping(value = "/b2b_login", method = RequestMethod.GET)
		public String b2b_login() {
			System.out.println("b2b_login 입장");
			return "js/b2b_login";// 이동할 페이지 : +.jsp
		}
	  @RequestMapping(value = "/admin", method = RequestMethod.GET) //해더 "방방곡곡" 클릭하면 index로
	  	public String admin() {
		  return "/js/adminLogin";//이동할 페이지 : +.jsp }
	  }


	@RequestMapping(value = "/logoutkakao", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		// 세션 무효화
		if (session != null) {
			session.invalidate();
		}
		// 메인 페이지로 리디렉션
		return "redirect:/index";
	}

	@RequestMapping(value = "/js/myPage", method = RequestMethod.GET)
	public String myPage(HttpSession session, Model model) {
		String user_id = (String) session.getAttribute("user_id");
		Integer auth = (Integer) session.getAttribute("auth");

		if (user_id != null && auth != null) {
			if (auth == 0) {
				// 권한이 0 이면 사용자마이페이지로
				return "js/myPage";
			} else if (auth == 1) {
				// 권한이 1 이면 사업자 페이지로 이동
				return "js/bizPage";
			} else if (auth ==2) {
				// 권한이 2 이면 어드민 페이지로 이동
				return "/sh/admin/userAdm2";
			}
		}
		// 로그인 안되어있으면 login페이지로 리다이렉트!!@
		return "redirect:/js/login";
	}

	@RequestMapping(value = "/b2b", method = RequestMethod.GET)
	public String b2b(Locale locale, Model model) {
		return "js/b2b";// 이동할 페이지 : +.jsp
	}

	@RequestMapping(value = "/naver", method = RequestMethod.GET)
	public String naver(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "js/naver";// 이동할 페이지 : +.jsp
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String email(Model model) {
		return "js/login";// 이동할 페이지 : +.jsp
	}

	@RequestMapping(value = "/email_login", method = RequestMethod.GET)
	public String email_login() {
		System.out.println("email_login 입장");
		return "js/email_login";// 이동할 페이지 : +.jsp
	}

	@RequestMapping(value = "/login_success", method = RequestMethod.POST)
	public String loginSuccess(@RequestParam("user_id") String id, @RequestParam("user_pw") String password,
	        @RequestParam(value = "email_auto", required = false) String autoLogin, RedirectAttributes rttr,
	        HttpSession session, HttpServletResponse response) throws Exception {
	    // 사용자 정보 조회
	    JsUSER_listDto user = USER_list.userLogin(id);
	    
	    if (user != null && user.getuser_id().equals(id)) {
	        // 암호화된 비밀번호와 비교
	        if (passwordEncoder.matches(password, user.getuser_pw())) {
	            // 로그인 성공 시 세션에 사용자 정보 저장
	            session.setAttribute("user_id", user.getuser_id()); // 사용자 아이디 세션
	            session.setAttribute("auth", user.getauth()); // 권한 세션 0=사용자 1=사업자 2=관리자
	            
	            // 자동 로그인을 선택한 경우 쿠키 생성
	            if (autoLogin != null) {
	                Cookie autoLoginCookie = new Cookie("autoLogin", session.getId());
	                autoLoginCookie.setPath("/");
	                autoLoginCookie.setMaxAge(60 * 60 * 24 * 7); // 7일간 유지
	                autoLoginCookie.setSecure(true); // HTTPS 전송만 허용
	                response.addCookie(autoLoginCookie);
	            }
	            
	            System.out.println("----------------------------");
	            System.out.println("세션아이디:" + user.getuser_id());
	            System.out.println("권한:" + user.getauth());
	            System.out.println("----------------------------");
	            rttr.addAttribute("loginSuccess", "로그인 성공");
	            return "redirect:/"; // 메인 페이지로 이동
	        }
	    }
	    
	    // 로그인 실패 시 메시지 전달 및 실패 페이지로 이동
	    return "redirect:/loginfail"; // 로그인 실패 페이지로 이동
	}
	
	@RequestMapping(value = "/admin_success", method = RequestMethod.POST)
	public String adminSuccess(@RequestParam("user_id") String id, @RequestParam("user_pw") String password,
	        RedirectAttributes rttr, HttpSession session) throws Exception {
	    // 사용자 정보 조회
	    JsUSER_listDto user = USER_list.userLogin(id);
	    
	    
	    if (user != null && user.getuser_id().equals(id)) {
	        // 비밀번호를 암호화 없이 비교
	        if (user.getuser_pw().equals(password)) {
	            // 로그인 성공 시 세션에 사용자 정보 저장
	            session.setAttribute("user_id", user.getuser_id()); // 사용자 아이디 세션
	            session.setAttribute("auth", user.getauth()); // 권한 세션 0=사용자 1=사업자 2=관리자
	            Integer auth = (Integer) session.getAttribute("auth");
	            if(auth == 2) {
	            	return "/sh/admin/userAdm";
	            }
	            System.out.println("----------------------------");
	            System.out.println("세션아이디:" + user.getuser_id());
	            System.out.println("권한:" + user.getauth());
	            System.out.println("----------------------------");
	            rttr.addAttribute("loginSuccess", "로그인 성공");
	            return "redirect:/"; // 메인 페이지로 이동
	        }
	    }
	    // 로그인 실패 시 메시지 전달 및 실패 페이지로 이동
	    return "redirect:/loginfail2"; // 로그인 실패 페이지로 이동
	}
	
	@RequestMapping(value = "/biz_success", method = RequestMethod.POST) //사업자 로그인 성공
	public String bizSuccess(@RequestParam("biz_no") String id, @RequestParam("biz_pw") String password,RedirectAttributes rttr,
			HttpSession session, HttpServletResponse response) throws Exception {
		// 사용자 정보 조회
		JsBiz_partnerDto biz = biz_partner.checkId(id, password);

		if (biz != null && biz.getBiz_no().equals(id) && biz.getBiz_pw().equals(password)) {
			// 로그인 성공 시 세션에 사용자 정보 저장
			session.setAttribute("user_id", biz.getBiz_no()); // 사업자 아이디세션 똑같이 user_id 로 세션
			session.setAttribute("auth", biz.getAuth()); // 권한 세션 0=사용자 1=사업자 2=관리자
			System.out.println("----------------------------");
			System.out.println("세션아이디:" + biz.getBiz_no());
			System.out.println("권한:" + biz.getAuth());
			System.out.println("----------------------------");
			rttr.addAttribute("loginSuccess", "로그인 성공");
			return "redirect:/"; // 메인 페이지로 이동
		} else {
			// 로그인 실패 시 메시지 전달 및 실패 페이지로 이동
			return "redirect:/loginfail"; // 로그인 실패 페이지로 이동
		}
	}

	@RequestMapping(value = "/로그인 상태 ok", method = RequestMethod.GET)
	public String l(Model model) throws Exception {
		// 세션을 이용해서 로그인 상태 유지 가능하게 해야함.
		// 로그인 상태면 마이페이지 클릭시 장바구니 같은거 나오게 하기
		// if 문 써서 맞으면 리턴값을 장바구니로 아니면 로그인 화면으로
		return "js/loginfail";// 이동할 페이지 : +.jsp

	}

	@RequestMapping(value = "/loginfail", method = RequestMethod.GET)
	public String loginfail(Model model) throws Exception {

		return "js/loginfail";// 이동할 페이지 : +.jsp
	}
	@RequestMapping(value = "/loginfail2", method = RequestMethod.GET)
	public String loginfail2(Model model) throws Exception {

		return "js/loginfail2";// 이동할 페이지 : +.jsp
	}


	@RequestMapping(value = "/USER_listDB", method = RequestMethod.POST)
	public String insertDB(JsUSER_listDto dto, RedirectAttributes rttr) throws Exception {
		System.out.println("USER_listDB 입장");
		dto.setuser_pw(passwordEncoder.encode(dto.getuser_pw())); // 비밀번호 암호화
		rttr.addFlashAttribute("mm", "회원가입 성공.");
		USER_list.insert(dto);

		return "redirect:/login";
	}
//	@RequestMapping(value = "/biz_partner", method = RequestMethod.GET)
//	public String biz_partner(Model model, String user_pw2) throws Exception {
//		System.out.println("biz_partner 인설트 입장");
//		return "js/email_login";// 이동할 페이지 : +.jsp
//	}

	@RequestMapping(value = "/biz_partnerDB", method = RequestMethod.POST)
	public String biz_insertDB(JsBiz_partnerDto dto, RedirectAttributes rttr) throws Exception {
		System.out.println("============================");
		System.out.println("biz_partnerDB 입장");
		System.out.println("============================");
		rttr.addFlashAttribute("mm", "회원가입 성공.");
		biz_partner.insertBiz(dto);

		return "redirect:/b2b";
	}

	@RequestMapping(value = "/js/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletResponse response) {
		System.out.println("logout 입장");
		session.invalidate(); // 세션 전체 삭제

		// 자동 로그인 쿠키 삭제
		Cookie autoLoginCookie = new Cookie("autoLogin", null);
		autoLoginCookie.setPath("/");
		autoLoginCookie.setMaxAge(0); // 쿠키를 즉시 삭제
		autoLoginCookie.setSecure(true); // HTTPS 전송만 허용
		response.addCookie(autoLoginCookie);

		return "redirect:/"; // 이동할 페이지
	}

	@RequestMapping(value = "/api/user/check-duplicate", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Map<String, Boolean> checkDuplicateUserId(@RequestParam("user_id") String user_id) {
		boolean isAvailable = USER_list.isIdAvailable(user_id);
		Map<String, Boolean> response = new HashMap<>();
		response.put("exists", !isAvailable); // 중복 여부를 명확히 전달
		return response;
	}

	@RequestMapping(value = "/js/myPinfo", method = RequestMethod.GET) // 개인정보 수정,회원탈퇴 페이지
	public String myPinfo(HttpSession session, Model model) throws Exception {
		// 로그인된 사용자 ID를 세션에서 가져옵니다.
		String user_id = (String) session.getAttribute("user_id");

		// 로그인된 사용자의 정보가 없으면 로그인 페이지로 리다이렉트합니다.
		if (user_id == null) {
			return "redirect:/js/login";
		}

		// 사용자 정보 조회
		JsUSER_listDto userInfo = USER_list.getUserInfo(user_id);

		// 모델에 사용자 정보를 추가하여 JSP 페이지로 전달.
		model.addAttribute("user", userInfo);

		return "js/myPinfo"; // JSP 페이지 이름
	}
	@RequestMapping(value = "/js/bizInfo", method = RequestMethod.GET) // 사업자개인정보 수정,회원탈퇴 페이지
	public String bizPinfo(HttpSession session, Model model) throws Exception {
		// 로그인된 사용자 ID를 세션에서 가져옵니다.
		String user_id = (String) session.getAttribute("biz_no");
		
		// 로그인된 사업자의 정보가 없으면 로그인 페이지로 리다이렉트합니다.
		if (user_id == null) {
			return "redirect:/js/login";
		}

		// 사업자 정보 조회
		JsBiz_partnerDto bizInfo = biz_partner.getBizInfo(user_id);

		// 모델에 사용자 정보를 추가하여 JSP 페이지로 전달.
		model.addAttribute("biz", bizInfo);

		return "js/bizinfo"; // JSP 페이지 이름
	}

	@RequestMapping(value = "/email_userDeleteDB", method = RequestMethod.POST)
	public String deleteUser(@RequestParam("user_id") String user_id, RedirectAttributes rttr, HttpSession session) {
		System.out.println("delete 입장했따ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ");
		session.invalidate(); // 현재 세션 무효화 (로그아웃)
		try {
			USER_list.userDelete(user_id);
			rttr.addFlashAttribute("message", "회원탈퇴가 완료되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			rttr.addFlashAttribute("message", "회원탈퇴 중 오류가 발생했습니다.");
		}
		return "redirect:/js/myPage"; // 탈퇴 후 이동할 페이지
	}



	   @RequestMapping(value = "/js/userIdFind", method = RequestMethod.GET) //사용자 아이디 찾기 페이지 이동
	   public String userIdFind(Model model) throws Exception {
	      return "/js/userIdFind";// 이동할 페이지 : +.jsp

	   }
	   
	@RequestMapping(value = "/userIdFindDB", method = RequestMethod.POST) // 사용자 아이디 찾기 DB
	public String userIdFindDB(@RequestParam("user_name") String user_name, @RequestParam("tel") String tel,@RequestParam("email") String email, Model model) throws Exception {
	    JsUSER_listDto userID = USER_list.UserFindId(user_name, tel , email);
		System.out.println("==================================");
		System.out.println("아이디 찾기 들어옴~~~");
		System.out.println("==================================");
	    if (userID == null) {
	        // 사용자 정보가 없을 때
	        model.addAttribute("errorMessage", "다시 입력해 주세요.");
	        return "/js/userIdFind"; // 아이디 찾기 페이지로 다시 이동
	    }
	    
	    model.addAttribute("user", userID);
	    return "/js/userIdFindOk"; // 아이디 찾기 성공 페이지로 이동
	}
	
	@RequestMapping(value = "/js/userPwFind", method = RequestMethod.GET) //사용자 비밀번호 찾기 페이지 이동
	public String userPwFind(Model model) throws Exception {
		System.out.println("==========================");
		System.out.println("비밀번호 찾기 들어옴~~~");
		System.out.println("==========================");
		return "/js/login";// 이동할 페이지 : +.jsp

	}

	   @RequestMapping(value = "/js/userPwFindDB", method = RequestMethod.POST) 
	   public String userPwFindDB(@RequestParam("user_name") String user_name, 
	                              @RequestParam("email") String email,
	                              @RequestParam("user_id") String user_id,
	                              Model model) throws Exception {
		   System.out.println("==================================");
	       System.out.println("비밀번호 찾기 DB 들어옴~~~");
	       System.out.println("==================================");

	       // 사용자 정보를 DB에서 조회
	       JsUSER_listDto userPw = USER_list.UserFindPw(user_name, email, user_id);  // 이름, 이메일, ID로 사용자 조회

	       // 사용자 정보가 없으면
	       if (userPw == null) {
	           model.addAttribute("error", "이름, 이메일, 또는 아이디가 일치하지 않습니다.");
	           System.out.println("여기로 오니?");
	           return "/js/userPwFind";  // 일치하지 않으면 다시 찾기 페이지로 이동
	           
	       }

	       // 사용자 정보가 존재할 경우 (비밀번호 변경 페이지로 이동)
	       return "/js/userUpdate";  // 비밀번호 변경 페이지로 이동
	   }
		@RequestMapping(value = "/js/userUpdate", method = RequestMethod.GET)
		public String userUpdate(RedirectAttributes rttr, HttpSession session, Model model) throws Exception {
		   System.out.println("update 입장했따ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ");
//	       session.invalidate();  // 현재 세션 무효화 (로그아웃)
			// 로그인된 사용자 ID를 세션에서 가져옵니다.
			String user_id = (String) session.getAttribute("user_id");

			// 로그인된 사용자의 정보가 없으면 로그인 페이지로 리다이렉트합니다.
			if (user_id == null) {
				return "redirect:/js/login";
			}
			// 사용자 정보 조회
			JsUSER_listDto userInfo = USER_list.getUserInfo(user_id);

			// 모델에 사용자 정보를 추가하여 JSP 페이지로 전달.
			model.addAttribute("user", userInfo);

			return "/js/userUpdate";
		}
	@RequestMapping(value = "/userUpdateDB", method = RequestMethod.POST)
	public String updatePassword(@RequestParam("user_id") String user_id,
	                             @RequestParam("current_pw") String current_pw,
	                             @RequestParam("new_pw") String new_pw,
	                             RedirectAttributes rttr) throws Exception {
	    System.out.println("==================================");
	    System.out.println("비밀번호 변경 들어옴~~~");
	    System.out.println("==================================");
	    // 사용자 정보 가져오기
	    JsUSER_listDto user = USER_list.getUserInfo(user_id);
	    
	    if (user != null) {
	        // 암호화된 비밀번호와 현재 비밀번호 비교
	        if (passwordEncoder.matches(current_pw, user.getuser_pw())) {
	            // 새 비밀번호 암호화 후 업데이트
	            String encodedNewPassword = passwordEncoder.encode(new_pw);
	            USER_list.userUpdate(user_id, encodedNewPassword); // 암호화된 새 비밀번호 전달
	            
	            rttr.addFlashAttribute("msg", "비밀번호가 성공적으로 변경되었습니다.");
	            return "redirect:/js/login"; // 성공 시 로그인 이동
	        } else {
	            rttr.addFlashAttribute("error", "현재 비밀번호가 일치하지 않습니다.");
	            return "redirect:/js/userUpdate"; // 비밀번호가 틀리면 다시 비밀번호 변경 페이지로
	        }
	    } else {
	        rttr.addFlashAttribute("error", "사용자 정보를 찾을 수 없습니다.");
	        return "redirect:/js/userUpdate"; // 사용자가 없을 경우
	    }
	}

	//이메일 인증
	@PostMapping("/EmailAuth")
	@ResponseBody
	public int emailAuth(String email) {
		
		System.out.println("전달 받은 이메일 주소 : " + email);
		
		//난수의 범위 111111 ~ 999999 (6자리 난수)
		Random random = new Random();
		int checkNum = random.nextInt(888888)+111111;
		
		//이메일 보낼 양식
		String setFrom = "(qkdwnstlr98@naver.com)"; //2단계 인증 x, 메일 설정에서 POP/IMAP 사용 설정에서 POP/SMTP 사용함으로 설정o
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "인증 코드는 " + checkNum + " 입니다." +
						 "<br>" +
						 "해당 인증 코드를 인증 코드 확인란에 기입하여 주세요.";
		
		try {
			MimeMessage message = mailSender.createMimeMessage(); //Spring에서 제공하는 mail API
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content, true);
            mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("랜덤숫자: "+ checkNum);
		return checkNum;
	}
	
	// 페이징 메소드~~~
	@RequestMapping(value = "/usersSelect", method = RequestMethod.GET)
	public String usersSelect(HttpSession session, 
	                          @RequestParam(value = "page", defaultValue = "1") int page,
	                          @RequestParam(value = "size", defaultValue = "5") int size,
	                          Model model) throws Exception {

	    // 페이지네이션 처리
	    int offset = (page - 1) * size;

	    // 데이터 가져오기
	    List<JsUSER_listDto> users = USER_list.getUsersByPage(offset, size);

	    // 전체 사용자 수 가져오기
	    int totalCount = USER_list.getTotalUserCount(); // 전체 사용자 수
	    int totalPages = (int) Math.ceil((double) totalCount / size); // 총 페이지 수 계산

	    // 모델에 데이터 추가
	    model.addAttribute("users", users); // 사용자 목록
	    model.addAttribute("currentPage", page); // 현재 페이지
	    model.addAttribute("totalPages", totalPages); // 총 페이지 수
	    model.addAttribute("size", size); // 페이지당 사용자 수

	    // 뷰 이름 반환
	    return "sh/admin/userAdm"; // 사용자 목록 JSP 파일로 이동
	}
	// 관리자에서 회원 탈퇴 시켜버리기
	@RequestMapping(value = "/userDelete", method = RequestMethod.POST)
	public String userDelete(@RequestParam("user_id") String user_id, Model model) throws Exception {
	    // 사용자 삭제 로직 호출
	    USER_list.userDelete(user_id);

	    // 사용자 목록 페이지로 리다이렉트
	    return "redirect:/usersSelect";  // 삭제 후 사용자 목록 페이지로 이동
	}
	
	
}
