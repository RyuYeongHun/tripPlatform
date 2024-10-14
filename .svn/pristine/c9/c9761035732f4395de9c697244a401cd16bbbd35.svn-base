package joeun.project.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import joeun.project.dto.JsUSER_listDto;

public interface JsIUSER_listDao {
   
    // 사용자 회원가입
    public void insert(JsUSER_listDto dto) throws Exception;
   
    // 사용자 데이터 보여주기 (ID로 조회)
    public JsUSER_listDto selectByUserId(String user_id);
   
    // 사용자 로그인 체크
    public JsUSER_listDto checkId(@Param("user_id") String user_id, @Param("user_pw") String user_pw);

    // 사용자 데이터 삭제
    public int userDelete(String user_id);

    // 사용자 아이디 중복 체크
    public Integer checkIdExists(String user_id);

    // 사용자 비밀번호 변경
    public int userUpdate(@Param("user_id") String user_id, @Param("new_pw") String new_pw, @Param("current_pw") String current_pw);

    // 사용자 아이디 찾기
    public JsUSER_listDto UserFindId(@Param("user_name") String user_name, @Param("tel") String tel, @Param("email") String email);
   
    // 이메일 인증 코드 삽입
    public void insertVerificationCode(@Param("user_id") String user_id, @Param("verification_code") String verification_code) throws Exception;
   
    // 이메일 인증 코드 조회
    public String getVerificationCode(String user_id) throws Exception;

    // 사용자 로그인
    public JsUSER_listDto userLogin(@Param("user_id") String user_id);

    // 사용자 비밀번호 찾기
    public JsUSER_listDto UserFindPw(@Param("user_name") String user_name, @Param("email") String email, @Param("user_id") String user_id);
   
    // 페이징 처리를 위한 사용자 목록 조회 (offset, limit)
    public List<JsUSER_listDto> getUsersByPage(@Param("offset") int offset, @Param("size") int size);
   
    // 전체 사용자 수를 반환
    public int getTotalUserCount() throws Exception;

}
