package joeun.project.dto;

public class AgeDto {
	
	private Integer age_id;
	private String age_name;

	public AgeDto() {}

	public AgeDto(Integer age_id, String age_name) {
		super();
		this.age_id = age_id;
		this.age_name = age_name;
	}

	public Integer getAge_id() {
		return age_id;
	}

	public void setAge_id(Integer age_id) {
		this.age_id = age_id;
	}

	public String getAge_name() {
		return age_name;
	}

	public void setAge_name(String age_name) {
		this.age_name = age_name;
	}

	@Override
	public String toString() {
		return "AgeDto [age_id=" + age_id + ", age_name=" + age_name + "]";
	}

	
	

}
