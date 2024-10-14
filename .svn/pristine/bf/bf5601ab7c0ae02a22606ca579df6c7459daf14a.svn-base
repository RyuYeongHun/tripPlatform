package joeun.project.service;

import java.util.List;
import java.util.Map;

import joeun.project.dto.YhAccess_Facil_CodeDto;
import joeun.project.dto.YhBolgguriDto;
import joeun.project.dto.YhBolgguri_ReviewDto;
import joeun.project.dto.YhBolgguri_content_imageDto;
import joeun.project.dto.YhBolgguri_nearbyDto;


public interface IYhBolgguri_DetailService {
	//BolgguriDto read
	public YhBolgguriDto selectAll(Integer bolgguri_id) throws Exception;	//bolgguri_id로 상품 정보 검색
	public List<YhBolgguri_content_imageDto> selectImages(Integer contentId) throws Exception;	//사진 가져오기
	public List<YhBolgguri_ReviewDto> selectReview(Integer bolgguri_id) throws Exception;	//리뷰 가져오기
	public List<YhAccess_Facil_CodeDto> getAccessFacilCodesByFacilId(Integer accessFacilId) throws Exception;	//장애인 편의시설 정보가져오기
	public void likePost(Integer bolgguri_id, String user_id) throws Exception; 	//볼거리 좋아요
	public void unlikePost(Integer bolgguri_id, String user_id) throws Exception;	//볼거리 좋아요 취소
	public int checkLikeExists(Integer bolgguri_id, String user_id) throws Exception;	//해당 유저 볼거리 좋아요 확인
	public int getLikesCountByBolgguriId(Integer bolgguri_id) throws Exception;		//bolgguri_id에 해당하는 좋아요 수 가져오기
	public void addReview(YhBolgguri_ReviewDto reviewDto) throws Exception;		//리뷰 추가
	public Double averageScore(Integer bolgguri_id) throws Exception;	//평균 별점
	public boolean reviewLikedByUser(YhBolgguri_ReviewDto reviewLike) throws Exception;	//해당 유저가 리뷰에 좋아요 했는지 확인
	public void removeReviewLike(YhBolgguri_ReviewDto reviewLike, String user_id) throws Exception;	//리뷰 좋아요 취소
	public void addReviewLike(YhBolgguri_ReviewDto reviewLike, String user_id) throws Exception;	//리뷰 좋아요
	public void removeReviewLike2(Integer review_id, String user_id) throws Exception;
	public void addReviewLike2(Integer review_id, String user_id) throws Exception;
	public int getReviewLikeCount(Integer review_id) throws Exception;	//리뷰 좋아요에 대한 숫자 가져오기
	public boolean reviewLikedByUser2(Integer review_id, String user_id) throws Exception;
    int countReviews(Integer bolgguri_id) throws Exception; // 전체 리뷰 수 계산
    List<YhBolgguri_ReviewDto> selectReviewWithPaging(Map<String, Object> params) throws Exception;	//리뷰 페이지 넘버링
    public List<YhBolgguri_nearbyDto> getLocations(double centerX, double centerY, double radius) throws Exception; //근처 볼거리 탐색 
	public void reviewDelete(Integer review_id, String user_id) throws Exception;
}
