package com.naturalskin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.BasketDto;

@Mapper
public interface BasketDao {

	int insert(BasketDto basketDto);

	BasketDto findByIds(BasketDto basketDto);

	int add(BasketDto basketDto);

	List<BasketDto> findById(String member_id);

	int modify(BasketDto basketDto);

	int getBasketPrice(BasketDto basketDto);

	int deleteById(BasketDto basketDto);

	int deleteAll(BasketDto basketDto);

}
