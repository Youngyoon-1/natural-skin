package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.naturalskin.dao.ProductDao;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.ProductDto;

@Service
public class ProductService {
	private final ProductDao productDao;
	
	public ProductService(ProductDao productDao) {
		this.productDao = productDao;
	}
	public int save(ProductDto productDto) {
		return productDao.save(productDto);
	}
	public List<ProductDto> findBy(ProductDto productDto, PagingDto pagingDto) {
		Map map = new HashMap();
		map.put("productDto", productDto);
		map.put("pagingDto", pagingDto);
		return productDao.findBy(map);
	}
	public int getCountOf(ProductDto productDto) {
		return productDao.getCountOf(productDto);
	}
	public ProductDto findById(ProductDto productDto) {
		return productDao.findById(productDto);
	}
	public int deleteImg(ProductDto productDto) {
		
		return productDao.modifyImg(productDto);
	}
	public int deleteContentImg(ProductDto productDto) {
		
		return productDao.modifyContentImg(productDto);
	}
	public String findImgPath(ProductDto productDto) {
		return productDao.findImgPath(productDto);
	}
	public String findContentImgPath(ProductDto productDto) {
		return productDao.findContentImgPath(productDto);
	}
	public int modify(ProductDto productDto) {
		return productDao.modify(productDto);
	}
	public int delete(ProductDto productDto) {
		return productDao.delete(productDto);
	}
}
