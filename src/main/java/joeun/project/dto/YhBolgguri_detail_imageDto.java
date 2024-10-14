package joeun.project.dto;

import java.util.Arrays;

public class YhBolgguri_detail_imageDto {
	private Integer id;
	private Integer bolgguri_id;
	private Byte[] image_data;
	private String image_desc;
	
	public YhBolgguri_detail_imageDto() {}

	public YhBolgguri_detail_imageDto(Integer id, Integer bolgguri_id, Byte[] image_data, String image_desc) {
		super();
		this.id = id;
		this.bolgguri_id = bolgguri_id;
		this.image_data = image_data;
		this.image_desc = image_desc;
	}

	@Override
	public String toString() {
		return "Bolgguri_detail_imageDto [id=" + id + ", bolgguri_id=" + bolgguri_id + ", image_data="
				+ Arrays.toString(image_data) + ", image_desc=" + image_desc + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getBolgguri_id() {
		return bolgguri_id;
	}

	public void setBolgguri_id(Integer bolgguri_id) {
		this.bolgguri_id = bolgguri_id;
	}

	public Byte[] getImage_data() {
		return image_data;
	}

	public void setImage_data(Byte[] image_data) {
		this.image_data = image_data;
	}

	public String getImage_desc() {
		return image_desc;
	}

	public void setImage_desc(String image_desc) {
		this.image_desc = image_desc;
	}
	
}
