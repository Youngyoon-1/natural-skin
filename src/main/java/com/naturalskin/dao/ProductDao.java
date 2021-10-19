package com.naturalskin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.ProductDto;

@Mapper
public interface ProductDao {
	
	int save(ProductDto productDto);


	List<ProductDto> findBy(Map map);

	int getCountOf(ProductDto productDto);

	ProductDto findById(ProductDto productDto);


	int modifyImg(ProductDto productDto);


	int modifyContentImg(ProductDto productDto);


	String findImgPath(ProductDto productDto);


	String findContentImgPath(ProductDto productDto);


	int modify(ProductDto productDto);


	int delete(ProductDto productDto);


	List<ProductDto> findAll();


	List<ProductDto> findByCategory(ProductDto productDto);
}
