package joeun.project.dto;

public class testDto {
	private String rnum;
	private String code;
	private String name;
	
	public testDto() {}
	public testDto(String rnum, String code, String name) {
		super();
		this.rnum = rnum;
		this.code = code;
		this.name = name;
	}
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
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
	@Override
	public String toString() {
		return "testDto [rnum=" + rnum + ", code=" + code + ", name=" + name + "]";
	}
	

}