package joeun.project.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import joeun.project.dao.IProductDayRandomDao;
import joeun.project.dto.ProductDayRandomDto;



@Service
public class ProductDayRandomImpl implements IProductDayRandomService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getNextRandomId() throws Exception{
		IProductDayRandomDao dao=sqlSession.getMapper(IProductDayRandomDao.class);
		return dao.getNextRandomId();
	}
	
	@Override
	public void registerProductDayRandom(ProductDayRandomDto productDayRandomDto) throws Exception {
		IProductDayRandomDao dao=sqlSession.getMapper(IProductDayRandomDao.class);
		dao.registerProductDayRandom(productDayRandomDto);
	}
	

}
