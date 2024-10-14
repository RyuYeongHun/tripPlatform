package joeun.project.dto;

public class HsfaqDto {
	private String category;
	private Integer id;
	private String question;
	private String answer;
	private String status;
	
	public HsfaqDto() {}

	public HsfaqDto(String category,int id,String question, String answer, String status) {
		super();
		this.category = category;
		this.id = id;
		this.question = question;
		this.answer = answer;
		this.status = status;
	}

	public String getcategory() {
		return category;
	}

	public void setcategory(String category) {
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "qnaDto [category=" + category + ", id=" + id + ", question=" + question + ", answer=" + answer
				+ ", status=" + status + "]";
	}

	
}
