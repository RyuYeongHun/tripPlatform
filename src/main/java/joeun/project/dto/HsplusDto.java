package joeun.project.dto;

public class HsplusDto {
	private Integer query_id;
	private String id;
	private String content;
	private String content_answer;
	private String suc;

	public HsplusDto() {
	}

	public HsplusDto(Integer query_id, String id, String content, String content_answer, String suc) {
		super();
		this.query_id = query_id;
		this.id = id;
		this.content = content;
		this.content_answer = content_answer;
		this.suc = suc;
	}

	public Integer getQuery_id() {
		return query_id;
	}

	public void setQuery_id(Integer query_id) {
		this.query_id = query_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent_answer() {
		return content_answer;
	}

	public void setContent_answer(String content_answer) {
		this.content_answer = content_answer;
	}

	public String getSuc() {
		return suc;
	}

	public void setSuc(String suc) {
		this.suc = suc;
	}

	@Override
	public String toString() {
		return "HsplusDto [query_id=" + query_id + ", id=" + id + ", content=" + content + ", content_answer="
				+ content_answer + ", suc=" + suc + "]";
	}

}
