package joeun.project.dto;

public class ProductDayRandomDto {
	
	private Integer random_id ;         
	private String user_id ;   
	private Integer period_id ; 		
	
	public ProductDayRandomDto () {}

	public ProductDayRandomDto(Integer random_id, String user_id, Integer period_id) {
		super();
		this.random_id = random_id;
		this.user_id = user_id;
		this.period_id = period_id;
	}

	public Integer getRandom_id() {
		return random_id;
	}

	public void setRandom_id(Integer random_id) {
		this.random_id = random_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Integer getPeriod_id() {
		return period_id;
	}

	public void setPeriod_id(Integer period_id) {
		this.period_id = period_id;
	}

	@Override
	public String toString() {
		return "ProductDayRandomDto [random_id=" + random_id + ", user_id=" + user_id + ", period_id=" + period_id
				+ "]";
	}

	

	

	
	
}
