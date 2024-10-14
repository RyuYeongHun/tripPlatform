package joeun.project.dto;

public class ThemeDto {
	
	private String code;
	private String name;
	private Integer rnum;

	public ThemeDto() {}

	public ThemeDto(String code, String name, Integer rnum) {
		super();
		this.code = code;
		this.name = name;
		this.rnum = rnum;
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

	public Integer getRnum() {
		return rnum;
	}

	public void setRnum(Integer rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "ThemeDto [code=" + code + ", name=" + name + ", rnum=" + rnum + "]";
	}

	

	
	

}
