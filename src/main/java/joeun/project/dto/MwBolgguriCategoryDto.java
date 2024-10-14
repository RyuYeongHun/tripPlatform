package joeun.project.dto;

public class MwBolgguriCategoryDto {
	private String code;
	private String name;
	
	public MwBolgguriCategoryDto() {}

	public MwBolgguriCategoryDto(String code, String name) {
		super();
		this.code = code;
		this.name = name;
	}

	@Override
	public String toString() {
		return "MwBolgguriCategoryDto [code=" + code + ", name=" + name + "]";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
		
	
}
