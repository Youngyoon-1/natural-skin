package com.naturalskin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.ReviewDto;

@Mapper
public interface ReviewDao {

	int save(ReviewDto reviewDto);

	List<ReviewDto> findAll();

	int getTotalCount();

	List<ReviewDto> findList(Map map);

	ReviewDto findById(String review_board_id);

	int updateHit(String review_board_id);

	int updateReplyCnt(int review_board_id);

	int delete(String review_board_id);

	int modify(ReviewDto reviewDto);

	int modifyImgPath(ReviewDto reviewDto);

	int findCountById(ReviewDto reviewDto);

	List<ReviewDto> findListById(Map map);

	int getCountBy(ReviewDto reviewDto);

	List<ReviewDto> findByProductId(Map map);

}
