package joeun.project.dto;

public class RegionDto {
	
	private String areacode;
	private String rnum;
	private String name;

	public RegionDto() {}

	public RegionDto(String areacode, String rnum, String name) {
		super();
		this.areacode = areacode;
		this.rnum = rnum;
		this.name = name;
	}

	public String getAreacode() {
		return areacode;
	}

	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}

	public String getRnum() {
		return rnum;
	}

	public void setRnum(String rnum) {
		this.rnum = rnum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "RegionDto [areacode=" + areacode + ", rnum=" + rnum + ", name=" + name + "]";
	}

	

}
