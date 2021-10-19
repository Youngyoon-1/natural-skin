package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.naturalskin.dao.ReviewDao;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.dto.ProductDto;
import com.naturalskin.dto.ReviewDto;

@Service
public class ReviewService {
	private final ReviewDao reviewDao;
	
	public ReviewService(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	public int save(ReviewDto reviewDto) {
		return reviewDao.save(reviewDto);
	}

	public List<ReviewDto> findAll() {
		return reviewDao.findAll();
	}

	public int getTotalCount() {
		return reviewDao.getTotalCount();
	}

	public List<ReviewDto> findList(PagingDto pagingDto, ReviewDto reviewDto) {
		Map map = new HashMap();
		map.put("pagingDto", pagingDto);
		map.put("reviewDto", reviewDto);
		return reviewDao.findList(map);
	}

	public ReviewDto findById(String review_board_id) {
		return reviewDao.findById(review_board_id);
	}

	public int updateHit(String review_board_id) {
		return reviewDao.updateHit(review_board_id);
	}

	public void updateReplyCnt(int review_board_id) {
		reviewDao.updateReplyCnt(review_board_id);
		
	}

	public int delete(String review_board_id) {
		return reviewDao.delete(review_board_id);
	}

	public int modify(ReviewDto reviewDto) {
		return reviewDao.modify(reviewDto);
	}

	public int modifyImgPath(ReviewDto reviewDto) {
		return reviewDao.modifyImgPath(reviewDto);
	}

	public int findCountById(ReviewDto reviewDto) {
		return reviewDao.findCountById(reviewDto);
	}

	public List<ReviewDto> findListById(PagingDto pagingDto, ReviewDto reviewDto) {
		Map map = new HashMap();
		map.put("reviewDto", reviewDto);
		map.put("pagingDto", pagingDto);
		return reviewDao.findListById(map);
	}

	public int getCountBy(ReviewDto reviewDto) {
		return reviewDao.getCountBy(reviewDto);
	}

	public List<ReviewDto> findByProductId(ProductDto productDto, int count) {
		Map map = new HashMap();
		map.put("productDto", productDto);
		map.put("count", count);
		return reviewDao.findByProductId(map);
	}
}
