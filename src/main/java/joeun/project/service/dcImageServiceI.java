package joeun.project.service;

import joeun.project.dto.dcImageDto;

public interface dcImageServiceI {

	void saveImage(dcImageDto imageDto);

	dcImageDto getImageData(int id);

}
