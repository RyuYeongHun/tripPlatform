package joeun.project.dto;

public class BolgguriViewDto {
	private String type;
	private String cat1;
	private String cat2;
	private String cat3;
	private String title;
	private String area;
	private String x;
	private String y;
	private String addr1;
	private String tel;
	private String contentid;
	private String firstimage;
	private String c_date;
	private String u_date;
	public BolgguriViewDto() {	}
	public BolgguriViewDto(String type, String cat1, String cat2, String cat3, String title, String area, String x,
			String y, String addr1, String tel, String contentid, String firstimage, String c_date, String u_date) {
		super();
		this.type = type;
		this.cat1 = cat1;
		this.cat2 = cat2;
		this.cat3 = cat3;
		this.title = title;
		this.area = area;
		this.x = x;
		this.y = y;
		this.addr1 = addr1;
		this.tel = tel;
		this.contentid = contentid;
		this.firstimage = firstimage;
		this.c_date = c_date;
		this.u_date = u_date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getX() {
		return x;
	}
	public void setX(String x) {
		this.x = x;
	}
	public String getY() {
		return y;
	}
	public void setY(String y) {
		this.y = y;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	public String getFirstimage() {
		return firstimage;
	}
	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}
	public String getC_date() {
		return c_date;
	}
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	public String getU_date() {
		return u_date;
	}
	public void setU_date(String u_date) {
		this.u_date = u_date;
	}
	@Override
	public String toString() {
		return "BolgguriViewDto [type=" + type + ", cat1=" + cat1 + ", cat2=" + cat2 + ", cat3=" + cat3 + ", title=" + title
				+ ", area=" + area + ", x=" + x + ", y=" + y + ", addr1=" + addr1 + ", tel=" + tel + ", contentid=" + contentid
				+ ", firstimage=" + firstimage + ", c_date=" + c_date + ", u_date=" + u_date + "]";
	}
	
	

}
