package joeun.project.dto;

import java.time.LocalDateTime;

public class HsFreeCommentDto {
	private Integer comment_Id;
	private Integer freeboard_Id;
	private String comment_Content;
	private String comment_Writer;
	private LocalDateTime created_At;
	
	public HsFreeCommentDto() {}
	
	
	public HsFreeCommentDto(Integer comment_Id, Integer freeboard_Id, String comment_Content, String comment_Writer,
			LocalDateTime created_At) {
		super();
		this.comment_Id = comment_Id;
		this.freeboard_Id = freeboard_Id;
		this.comment_Content = comment_Content;
		this.comment_Writer = comment_Writer;
		this.created_At = created_At;
	}


	public Integer getcomment_Id() {
		return comment_Id;
	}


	public void setcomment_Id(Integer comment_Id) {
		this.comment_Id = comment_Id;
	}


	public Integer getfreeboard_Id() {
		return freeboard_Id;
	}


	public void setfreeboard_Id(Integer freeboard_Id) {
		this.freeboard_Id = freeboard_Id;
	}


	public String getcomment_Content() {
		return comment_Content;
	}


	public void setcomment_Content(String comment_Content) {
		this.comment_Content = comment_Content;
	}


	public String getcomment_Writer() {
		return comment_Writer;
	}


	public void setcomment_Writer(String comment_Writer) {
		this.comment_Writer = comment_Writer;
	}


	public LocalDateTime getcreated_At() {
		return created_At;
	}


	public void setcreated_At(LocalDateTime created_At) {
		this.created_At = created_At;
	}


	@Override
	public String toString() {
		return "FreeCommentDto [comment_Id=" + comment_Id + ", freeboard_Id=" + freeboard_Id + ", comment_Content="
				+ comment_Content + ", comment_Writer=" + comment_Writer + ", created_At=" + created_At + "]";
	} 
	
	
	
}
