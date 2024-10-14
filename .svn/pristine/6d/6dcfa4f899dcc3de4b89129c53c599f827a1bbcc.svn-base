package joeun.project.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import joeun.project.dao.JsIUSER_listDao;
import joeun.project.dto.JsUSER_listDto;

@Service
public class JsUSER_listService implements JsIUSER_listService {

    @Autowired
    private SqlSession sqlSession;
    
    @Autowired
    private PasswordEncoder passwordEncoder; // 암호화된 비밀번호 비교를 위해 추가
    
    @Override
    public void insert(JsUSER_listDto dto) throws Exception { // 사용자 회원가입
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        dao.insert(dto);
    }

    @Override
    public JsUSER_listDto checkId(String user_id, String user_pw) { // 사용자 로그인
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.checkId(user_id, user_pw);
    }

    @Override
    public boolean isIdAvailable(String user_id) { // 사용자 아이디 중복확인 (0이면 OK, 1이면 NO)
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        Integer count = dao.checkIdExists(user_id);
        return count == 0; // count가 0이면 ID가 중복되지 않음
    }

    @Override
    public JsUSER_listDto getUserInfo(String user_id) throws Exception { // 사용자 아이디로 개인정보 찾기
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.selectByUserId(user_id);
    }

    @Override
    public void userDelete(String user_id) { // 사용자 삭제
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        int result = dao.userDelete(user_id);
        if (result > 0) {
            System.out.println("회원 탈퇴 성공");
        } else {
            System.out.println("회원 탈퇴 실패");
        }
    }

    @Override
    public void userUpdate(String user_id, String new_pw) { // 비밀번호 변경
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        int updatedRows = dao.userUpdate(user_id, new_pw, new_pw);

        if (updatedRows == 0) {
            throw new IllegalArgumentException("비밀번호가 일치하지 않거나 사용자를 찾을 수 없습니다.");
        }
    }

    @Override
    public JsUSER_listDto UserFindId(String user_name, String tel, String email) { // 사용자 아이디 찾기
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.UserFindId(user_name, tel, email); // 중복 호출 제거
    }

    @Override
    public void sendVerificationEmail(String email, String verificationCode) throws Exception {
        // 이메일 인증 메소드 대기
    }

    @Override
    public boolean verifyEmail(String userId, String verificationCode) throws Exception {
        // 이메일 인증 확인 메소드 대기
        return false;
    }

    @Override
    public JsUSER_listDto userLogin(String user_id) { // 사용자 로그인
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.userLogin(user_id);
    }

    @Override
    public JsUSER_listDto UserFindPw(String user_name, String email, String user_id) { // 비밀번호 찾기
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.UserFindPw(user_name, email, user_id);
    }

    @Override
    public int getTotalUserCount() throws Exception { // 전체 사용자 수 조회
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.getTotalUserCount();
    }

    @Override
    public List<JsUSER_listDto> getUsersByPage(int offset, int limit) throws Exception { // 페이징 처리된 사용자 목록 조회
        JsIUSER_listDao dao = sqlSession.getMapper(JsIUSER_listDao.class);
        return dao.getUsersByPage(offset, limit); // limit을 pageSize로 수정
    }
}
