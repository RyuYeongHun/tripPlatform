package joeun.project.dto;

public class YhBolgguri_content_imageDto {
	private Integer contentId;
	private String originImgUrl;

	
	public YhBolgguri_content_imageDto() {}


	public YhBolgguri_content_imageDto(Integer contentId, String originImgUrl) {
		super();
		this.contentId = contentId;
		this.originImgUrl = originImgUrl;
	}


	@Override
	public String toString() {
		return "YhBolgguri_detail_imageDto [contentId=" + contentId + ", originImgUrl=" + originImgUrl + "]";
	}


	public Integer getContentId() {
		return contentId;
	}


	public void setContentId(Integer contentId) {
		this.contentId = contentId;
	}


	public String getOriginImgUrl() {
		return originImgUrl;
	}


	public void setOriginImgUrl(String originImgUrl) {
		this.originImgUrl = originImgUrl;
	}

	
}
