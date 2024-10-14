package joeun.project.dto;

public class Location {

	private int id;
	private String name;
	private double xCoordinate;
	private double yCoordinate;

	private String title;
	private String addr1;
	private String mapx;
	private String mapy;
	private String areacode;
	private String sigungucode;
	

	public Location() { }
	public Location(int id, String name, double xCoordinate, double yCoordinate, String title, String addr1, String mapx,
			String mapy, String areacode, String sigungucode) {
		super();
		this.id = id;
		this.name = name;
		this.xCoordinate = xCoordinate;
		this.yCoordinate = yCoordinate;
		this.title = title;
		this.addr1 = addr1;
		this.mapx = mapx;
		this.mapy = mapy;
		this.areacode = areacode;
		this.sigungucode = sigungucode;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getxCoordinate() {
		return xCoordinate;
	}
	public void setxCoordinate(double xCoordinate) {
		this.xCoordinate = xCoordinate;
	}
	public double getyCoordinate() {
		return yCoordinate;
	}
	public void setyCoordinate(double yCoordinate) {
		this.yCoordinate = yCoordinate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
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
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public String getSigungucode() {
		return sigungucode;
	}
	public void setSigungucode(String sigungucode) {
		this.sigungucode = sigungucode;
	}
	@Override
	public String toString() {
		return "Location [id=" + id + ", name=" + name + ", xCoordinate=" + xCoordinate + ", yCoordinate=" + yCoordinate
				+ ", title=" + title + ", addr1=" + addr1 + ", mapx=" + mapx + ", mapy=" + mapy + ", areacode=" + areacode
				+ ", sigungucode=" + sigungucode + "]";
	}
	
	
}
