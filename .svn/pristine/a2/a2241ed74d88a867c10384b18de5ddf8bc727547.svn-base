package joeun.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.IMwCRUDDao;
import joeun.project.dao.IYhBolgguri_DetailDao;
import joeun.project.dto.YhAccess_Facil_CodeDto;
import joeun.project.dto.YhBolgguriDto;
import joeun.project.dto.YhBolgguri_ReviewDto;
import joeun.project.dto.YhBolgguri_content_imageDto;
import joeun.project.dto.YhBolgguri_nearbyDto;


@Service
public class YhBolgguri_DetailService implements IYhBolgguri_DetailService {

	
	 @Autowired
	 private SqlSession sqlSession;

	@Override
	//BolgguriDto read
	public YhBolgguriDto selectAll(Integer bolgguri_id) throws Exception {
        System.out.println("serviceImpl에서 id출력" + bolgguri_id);
        IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
        return dao.selectBolgguriById(bolgguri_id);
    }
	
	@Override
	public List<YhBolgguri_content_imageDto> selectImages(Integer contentId) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		return dao.selectImagesByContentId(contentId);
	}
	
	@Override
	public List<YhBolgguri_ReviewDto> selectReview(Integer bolgguri_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		return dao.selectReview(bolgguri_id);
	}

	@Override
	public List<YhAccess_Facil_CodeDto> getAccessFacilCodesByFacilId(Integer bolgguri_id) throws Exception {
	    if (sqlSession == null) {
	        System.err.println("sqlSession is null");
	        throw new NullPointerException("sqlSession is null");
	    }
	    IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    return dao.selectAccessFacilCodesByFacilId(bolgguri_id);
	}
	
	
	  @Override public void likePost(Integer bolgguri_id, String user_id) throws Exception {
		  if(checkLikeExists(bolgguri_id, user_id) == 0) {
			  IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
			  dao.insertLike(bolgguri_id, user_id);
		  } 
	  }
	  
	  
	  @Override public void unlikePost(Integer bolgguri_id, String user_id) throws Exception {
	  IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	  dao.deleteLike(bolgguri_id, user_id);  
	  }
	  
	  @Override public int checkLikeExists(Integer bolgguri_id, String user_id) throws Exception {
		  IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		  return dao.checkLikeExists(bolgguri_id, user_id);
	  }
	  
	  @Override public int getLikesCountByBolgguriId(Integer bolgguri_id) throws Exception {
		  IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		  return dao.countLikesByBolgguriId(bolgguri_id);
	  }
	  
	  @Override public void addReview(YhBolgguri_ReviewDto reviewDto) throws Exception {
		  if(reviewDto == null) {
			  throw new IllegalArgumentException("bolgguri_id, user_id, and reply_content cannot be null");
		  }
		  IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		  dao.insertReview(reviewDto);
	  }

	@Override
	public Double averageScore(Integer bolgguri_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		return dao.averageScore(bolgguri_id);
	}
	
	/*
	 * @Override public void increaseLikeCount(Integer review_id) throws Exception {
	 * if (review_id == null) { throw new
	 * IllegalArgumentException("review_id는 필수 값입니다."); } IYhBolgguri_DetailDao dao
	 * = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	 * dao.updateLikeCount(review_id); }
	 */
	
	@Override
	public boolean reviewLikedByUser(YhBolgguri_ReviewDto reviewLike) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    return dao.checkReviewLikeExists(reviewLike) > 0;
	}

	@Override
	public void addReviewLike(YhBolgguri_ReviewDto reviewLike, String user_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    dao.insertReviewLike(reviewLike, user_id);	
	}

	@Override
	public void removeReviewLike(YhBolgguri_ReviewDto reviewLike, String user_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    dao.deleteReviewLike(reviewLike, user_id);
	}
	
	
	  @Override public int getReviewLikeCount(Integer review_id) throws Exception {
		  IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class); 
		  return dao.getReviewLikeCount(review_id); 
	  }

	@Override
	public boolean reviewLikedByUser2(Integer review_id, String user_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class); 
		System.out.println("dao값" + dao.reviewLikedByUser2(review_id, user_id));
		  return dao.reviewLikedByUser2(review_id, user_id)  > 0; 
	}
	
	@Override
	public void addReviewLike2(Integer review_id, String user_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    dao.insertReviewLike2(review_id, user_id);	
	}
 
	@Override
	public void removeReviewLike2(Integer review_id, String user_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    dao.deleteReviewLike2(review_id, user_id);
	}

	@Override
	public int countReviews(Integer bolgguri_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		return dao.countReviews(bolgguri_id);
	}

	@Override
	public List<YhBolgguri_ReviewDto> selectReviewWithPaging(Map<String, Object> params) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		return dao.selectReviewWithPaging(params);
	}
	
	@Override
	public List<YhBolgguri_nearbyDto> getLocations(double centerX, double centerY, double radius) throws Exception {
	    IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
	    Map<String, Object> params = new HashMap<>();
	    params.put("centerX", centerX);
	    params.put("centerY", centerY);
	    params.put("radius", radius);
	    return dao.selectLocations(params);
	}
	
	@Override
	public void reviewDelete(Integer review_id, String user_id) throws Exception {
		IYhBolgguri_DetailDao dao = sqlSession.getMapper(IYhBolgguri_DetailDao.class);
		dao.reviewDelete(review_id, user_id);
	}
	 

}
/*
 * package joeun.project.service;
 * 
 * import java.util.ArrayList; import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import joeun.project.dao.IYhBolgguri_DetailDao; import
 * joeun.project.dto.YhBolgguriDto;
 * 
 * @Service public class YhBolgguri_DetailService implements
 * IYhBolgguri_DetailService {
 * 
 * @Autowired private IYhBolgguri_DetailDao bolgguriDetailDao;
 * 
 * @Override public List<YhBolgguriDto> selectAll(int bolgguri_id) throws
 * Exception { List<YhBolgguriDto> bolgguriDetails =
 * bolgguriDetailDao.selectBolgguriById(bolgguri_id);
 * 
 * if (bolgguriDetails == null || bolgguriDetails.isEmpty()) { return new
 * ArrayList<>(); // 빈 리스트 반환 }
 * 
 * // 개별 필드가 null일 경우 기본값 설정 for (YhBolgguriDto detail : bolgguriDetails) { if
 * (detail.getTitle() == null) { detail.setTitle("제목 없음"); // 기본값 설정 } // 필요한 경우
 * 다른 필드들에 대해 처리 }
 * 
 * return bolgguriDetails; } }
 */
