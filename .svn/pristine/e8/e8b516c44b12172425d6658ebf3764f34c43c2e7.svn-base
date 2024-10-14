package joeun.project.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import joeun.project.dto.YhAccess_Facil_CodeDto;
import joeun.project.dto.YhBolgguriDto;
import joeun.project.dto.YhBolgguri_ReviewDto;
import joeun.project.dto.YhBolgguri_content_imageDto;
import joeun.project.dto.YhBolgguri_nearbyDto;



public interface IYhBolgguri_DetailDao {
	public YhBolgguriDto selectBolgguriById(Integer bolgguri_id)  throws Exception ;
	public List<YhBolgguri_content_imageDto> selectImagesByContentId(Integer contentId) throws Exception;
	public List<YhBolgguri_ReviewDto> selectReview(Integer bolgguri_id) throws Exception;
	public List<YhAccess_Facil_CodeDto> selectAccessFacilCodesByFacilId(@Param("bolgguri_id") Integer bolgguri_id) throws Exception;
	public void increaseLikes(Integer bolgguri_id) throws Exception;
	public void decreaseLikes(Integer bolgguri_id) throws Exception;
	public void insertLike(@Param("bolgguri_id") Integer bolgguri_id, @Param("user_id") String user_id) throws Exception;
	public void deleteLike(@Param("bolgguri_id") Integer bolgguri_id, @Param("user_id") String user_id) throws Exception;
	public int checkLikeExists(@Param("bolgguri_id") Integer bolgguri_id, @Param("user_id") String user_id) throws Exception;
	public int countLikesByBolgguriId(@Param("bolgguri_id") Integer bolgguri_id) throws Exception;
	public void insertReview(YhBolgguri_ReviewDto reviewDto) throws Exception;
	public Double averageScore(Integer bolgguri_id) throws Exception;
	public void updateLikeCount(Integer review_id) throws Exception;
	public void insertReviewLike(@Param("review_id")YhBolgguri_ReviewDto reviewLike, @Param("user_id") String user_id) throws Exception;
	public void deleteReviewLike(@Param("review_id")YhBolgguri_ReviewDto reviewLike, @Param("user_id") String user_id) throws Exception;
	
	public void insertReviewLike2(@Param("review_id")Integer reivew_id, @Param("user_id") String user_id) throws Exception;
	public void deleteReviewLike2(@Param("review_id")Integer reivew_id, @Param("user_id") String user_id) throws Exception;
	
	public int checkReviewLikeExists(YhBolgguri_ReviewDto reviewLike) throws Exception;
	public int reviewLikeCount(Integer review_id) throws Exception;
	public int getReviewLikeCount(Integer review_id) throws Exception;
	public int reviewLikedByUser2(@Param("review_id") Integer review_id, @Param("user_id") String user_id) throws Exception;
	public int countReviews(Integer bolgguri_id) throws Exception;
	public List<YhBolgguri_ReviewDto> selectReviewWithPaging(Map<String, Object> params) throws Exception;
	public List<YhBolgguri_nearbyDto> selectLocations(Map<String, Object> params) throws Exception;
	
	public void reviewDelete(@Param("review_id") Integer review_id, @Param("user_id")String user_id) throws Exception;
}
