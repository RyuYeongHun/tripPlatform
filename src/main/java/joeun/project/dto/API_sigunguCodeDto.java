package joeun.project.dto;

public class API_sigunguCodeDto {
	private String areaCode;
	private String sigunguCode;
	private String name;
	private Integer rnum;
	public API_sigunguCodeDto() {	}
	public API_sigunguCodeDto(String areaCode, String sigunguCode, String name, Integer rnum) {
		super();
		this.areaCode = areaCode;
		this.sigunguCode = sigunguCode;
		this.name = name;
		this.rnum = rnum;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getSigunguCode() {
		return sigunguCode;
	}
	public void setSigunguCode(String sigunguCode) {
		this.sigunguCode = sigunguCode;
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
		return "API_sigunguCodeDto [areaCode=" + areaCode + ", sigunguCode=" + sigunguCode + ", name=" + name + ", rnum="
				+ rnum + "]";
	}
	
	
	
}
