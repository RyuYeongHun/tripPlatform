package joeun.project.dao;

import joeun.project.dto.ProductDayRandomDto;



public interface IProductDayRandomDao {
	
	
	public int getNextRandomId() throws Exception;
	
	//등록하기
	public void registerProductDayRandom(ProductDayRandomDto productDayRandomDto) throws Exception;

	
}