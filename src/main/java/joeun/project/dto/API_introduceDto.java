package joeun.project.dto;

public class API_introduceDto {
	private String contentid;
	private String contenttypeid;
	private String heritage1;
	private String heritage2;
	private String heritage3;
	private String infocenter;
	private String opendate;
	private String restdate;
	private String useseason;
	private String usetime;
	private String parking;
	private String accomcount;
	private String chkbabycarriage;
	private String chkcreditcard;
	private String chkpet;
	private String expagerange;
  private String expguide;
  
  public API_introduceDto() {	}
	public API_introduceDto(String contentid, String contenttypeid, String heritage1, String heritage2, String heritage3,
			String infocenter, String opendate, String restdate, String useseason, String usetime, String parking,
			String accomcount, String chkbabycarriage, String chkcreditcard, String chkpet, String expagerange,
			String expguide) {
		super();
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.heritage1 = heritage1;
		this.heritage2 = heritage2;
		this.heritage3 = heritage3;
		this.infocenter = infocenter;
		this.opendate = opendate;
		this.restdate = restdate;
		this.useseason = useseason;
		this.usetime = usetime;
		this.parking = parking;
		this.accomcount = accomcount;
		this.chkbabycarriage = chkbabycarriage;
		this.chkcreditcard = chkcreditcard;
		this.chkpet = chkpet;
		this.expagerange = expagerange;
		this.expguide = expguide;
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
	public String getHeritage1() {
		return heritage1;
	}
	public void setHeritage1(String heritage1) {
		this.heritage1 = heritage1;
	}
	public String getHeritage2() {
		return heritage2;
	}
	public void setHeritage2(String heritage2) {
		this.heritage2 = heritage2;
	}
	public String getHeritage3() {
		return heritage3;
	}
	public void setHeritage3(String heritage3) {
		this.heritage3 = heritage3;
	}
	public String getInfocenter() {
		return infocenter;
	}
	public void setInfocenter(String infocenter) {
		this.infocenter = infocenter;
	}
	public String getOpendate() {
		return opendate;
	}
	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}
	public String getRestdate() {
		return restdate;
	}
	public void setRestdate(String restdate) {
		this.restdate = restdate;
	}
	public String getUseseason() {
		return useseason;
	}
	public void setUseseason(String useseason) {
		this.useseason = useseason;
	}
	public String getUsetime() {
		return usetime;
	}
	public void setUsetime(String usetime) {
		this.usetime = usetime;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getAccomcount() {
		return accomcount;
	}
	public void setAccomcount(String accomcount) {
		this.accomcount = accomcount;
	}
	public String getChkbabycarriage() {
		return chkbabycarriage;
	}
	public void setChkbabycarriage(String chkbabycarriage) {
		this.chkbabycarriage = chkbabycarriage;
	}
	public String getChkcreditcard() {
		return chkcreditcard;
	}
	public void setChkcreditcard(String chkcreditcard) {
		this.chkcreditcard = chkcreditcard;
	}
	public String getChkpet() {
		return chkpet;
	}
	public void setChkpet(String chkpet) {
		this.chkpet = chkpet;
	}
	public String getExpagerange() {
		return expagerange;
	}
	public void setExpagerange(String expagerange) {
		this.expagerange = expagerange;
	}
	public String getExpguide() {
		return expguide;
	}
	public void setExpguide(String expguide) {
		this.expguide = expguide;
	}
	@Override
	public String toString() {
		return "API_introduceDto [contentid=" + contentid + ", contenttypeid=" + contenttypeid + ", heritage1=" + heritage1
				+ ", heritage2=" + heritage2 + ", heritage3=" + heritage3 + ", infocenter=" + infocenter + ", opendate="
				+ opendate + ", restdate=" + restdate + ", useseason=" + useseason + ", usetime=" + usetime + ", parking="
				+ parking + ", accomcount=" + accomcount + ", chkbabycarriage=" + chkbabycarriage + ", chkcreditcard="
				+ chkcreditcard + ", chkpet=" + chkpet + ", expagerange=" + expagerange + ", expguide=" + expguide + "]";
	}
  
  
}
