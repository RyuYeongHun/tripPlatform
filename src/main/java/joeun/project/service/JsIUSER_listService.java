package joeun.project.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.JsUSER_listDto;

public interface JsIUSER_listService {
   public void insert(JsUSER_listDto dto) throws Exception;
   
   public JsUSER_listDto getUserInfo(String user_id) throws Exception; //사용자 아이디
   
   public JsUSER_listDto checkId(@Param("user_id") String user_id,  // 사용자 로그인~
             @Param("user_pw") String user_pw);
   
   boolean isIdAvailable(String user_id); // 사용자 아이디 중복 확인~

   public void userDelete(String userId) throws Exception; //사용자 회원탈퇴~

   public void userUpdate(String user_id, String new_pw); //사용자 비밀번호 변경 id가 같은 값의 새로운비밀번호


   public JsUSER_listDto UserFindId(@Param("user_name")String user_name, @Param("tel")String tel,@Param("email") String email); // 사용자 아이디 찾기~
 

   // 이메일 인증 관련 메서드
   public void sendVerificationEmail(String email, String verificationCode) throws Exception;
   boolean verifyEmail(String userId, String verificationCode) throws Exception;
   /////////////////////////////////////////////////////////////////////////////////////////////
   
   public JsUSER_listDto userLogin(@Param("user_id")String user_id); // 사용자 로그인 할꺼임

  
   public JsUSER_listDto UserFindPw(String user_name, String email, String user_id);
   
   public int getTotalUserCount() throws Exception;
   
   public List<JsUSER_listDto> getUsersByPage(int offset, int pageSize) throws Exception;


//   public JsUSER_listDto userPw(String user_name, String email, String user_id); //임시로 만듬 랜덤비번
   
}