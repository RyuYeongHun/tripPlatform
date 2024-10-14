package joeun.project.service;

import joeun.project.dto.ProductDayRandomDto;


public interface IProductDayRandomService {

	public int getNextRandomId() throws Exception;
	
	//등록하기
	public void registerProductDayRandom(ProductDayRandomDto productDayRandomDto) throws Exception;

}
