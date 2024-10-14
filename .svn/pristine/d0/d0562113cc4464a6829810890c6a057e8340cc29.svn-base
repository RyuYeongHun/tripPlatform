package joeun.project.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.dcImageDaoI;
import joeun.project.dto.dcImageDto;
@Service
public class dcImageService implements dcImageServiceI {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void saveImage(dcImageDto imageDto) {
		//InputStream inputStream = new ByteArrayInputStream(imageData);
		dcImageDaoI dao = sqlSession.getMapper(dcImageDaoI.class);
		dao.saveImage(imageDto);

		
	}

	@Override
	public dcImageDto getImageData(int id) {
		dcImageDaoI dao = sqlSession.getMapper(dcImageDaoI.class);
		return dao.getImageData(id);
	}

}
