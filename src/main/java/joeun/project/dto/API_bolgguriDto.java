package joeun.project.dto;

public class API_bolgguriDto {
  private String addr1;
  private String addr2;
  private String areacode;
  private String booktour;
  private String cat1;
  private String cat2;
  private String cat3;
  private String contentid;
  private String contenttypeid;
  private String createdtime;
  private String firstimage;
  private String firstimage2;
  private String cpyrhtdivcd;
  private String mapx;
  private String mapy;
  private String mlevel;
  private String modifiedtime;
  private String sigungucode;
  private String tel;
  private String title;
  
  public API_bolgguriDto() {}
	public API_bolgguriDto(String addr1, String addr2, String areacode, String booktour, String cat1, String cat2,
			String cat3, String contentid, String contenttypeid, String createdtime, String firstimage, String firstimage2,
			String cpyrhtDivCd, String mapx, String mapy, String mlevel, String modifiedtime, String sigungucode, String tel,
			String title) {
		super();
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.areacode = areacode;
		this.booktour = booktour;
		this.cat1 = cat1;
		this.cat2 = cat2;
		this.cat3 = cat3;
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.createdtime = createdtime;
		this.firstimage = firstimage;
		this.firstimage2 = firstimage2;
		this.cpyrhtdivcd = cpyrhtDivCd;
		this.mapx = mapx;
		this.mapy = mapy;
		this.mlevel = mlevel;
		this.modifiedtime = modifiedtime;
		this.sigungucode = sigungucode;
		this.tel = tel;
		this.title = title;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public String getBooktour() {
		return booktour;
	}
	public void setBooktour(String booktour) {
		this.booktour = booktour;
	}
	public String getCat1() {
		return cat1;
	}
	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}
	public String getCat2() {
		return cat2;
	}
	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}
	public String getCat3() {
		return cat3;
	}
	public void setCat3(String cat3) {
		this.cat3 = cat3;
	}
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	public String getContenttypeid() {
		return contenttypeid;
	}
	public void setContenttypeid(String contenttypeid) {
		this.contenttypeid = contenttypeid;
	}
	public String getCreatedtime() {
		return createdtime;
	}
	public void setCreatedtime(String createdtime) {
		this.createdtime = createdtime;
	}
	public String getFirstimage() {
		return firstimage;
	}
	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}
	public String getFirstimage2() {
		return firstimage2;
	}
	public void setFirstimage2(String firstimage2) {
		this.firstimage2 = firstimage2;
	}
	public String getCpyrhtDivCd() {
		return cpyrhtdivcd;
	}
	public void setCpyrhtDivCd(String cpyrhtDivCd) {
		this.cpyrhtdivcd = cpyrhtDivCd;
	}
	public String getMapx() {
		return mapx;
	}
	public void setMapx(String mapx) {
		this.mapx = mapx;
	}
	public String getMapy() {
		return mapy;
	}
	public void setMapy(String mapy) {
		this.mapy = mapy;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getModifiedtime() {
		return modifiedtime;
	}
	public void setModifiedtime(String modifiedtime) {
		this.modifiedtime = modifiedtime;
	}
	public String getSigungucode() {
		return sigungucode;
	}
	public void setSigungucode(String sigungucode) {
		this.sigungucode = sigungucode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "RestDataDto [addr1=" + addr1 + ", addr2=" + addr2 + ", areacode=" + areacode + ", booktour=" + booktour
				+ ", cat1=" + cat1 + ", cat2=" + cat2 + ", cat3=" + cat3 + ", contentid=" + contentid + ", contenttypeid="
				+ contenttypeid + ", createdtime=" + createdtime + ", firstimage=" + firstimage + ", firstimage2=" + firstimage2
				+ ", cpyrhtDivCd=" + cpyrhtdivcd + ", mapx=" + mapx + ", mapy=" + mapy + ", mlevel=" + mlevel
				+ ", modifiedtime=" + modifiedtime + ", sigungucode=" + sigungucode + ", tel=" + tel + ", title=" + title + "]";
	}
  
  
}
