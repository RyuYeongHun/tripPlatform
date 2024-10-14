package joeun.project.dto;

public class AgeChoiceDto {
	
	private Integer choiceage_id;
	private Integer choice_id;
	private Integer age_id;
	
	public AgeChoiceDto() {}

	public AgeChoiceDto(Integer choiceage_id, Integer choice_id, Integer age_id) {
		super();
		this.choiceage_id = choiceage_id;
		this.choice_id = choice_id;
		this.age_id = age_id;
	}

	public Integer getChoiceage_id() {
		return choiceage_id;
	}

	public void setChoiceage_id(Integer choiceage_id) {
		this.choiceage_id = choiceage_id;
	}

	public Integer getChoice_id() {
		return choice_id;
	}

	public void setChoice_id(Integer choice_id) {
		this.choice_id = choice_id;
	}

	public Integer getAge_id() {
		return age_id;
	}

	public void setAge_id(Integer age_id) {
		this.age_id = age_id;
	}

	@Override
	public String toString() {
		return "AgeChoiceDto [choiceage_id=" + choiceage_id + ", choice_id=" + choice_id + ", age_id=" + age_id + "]";
	}

	



}
