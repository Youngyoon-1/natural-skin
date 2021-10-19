package com.naturalskin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.OrderDetailDto;
import com.naturalskin.dto.OrderDto;

@Mapper
public interface OrderDetailDao {

	int insert(OrderDetailDto orderDetailDto);

	List<OrderDetailDto> findById(OrderDto orderDto);

	OrderDetailDto findDetailById(OrderDetailDto orderDetailDto);

	int updateReviewState(String order_detail_id);

	List<OrderDetailDto> findCanReview(String member_id);

	int updateReStateByOrderId(OrderDto orderDto);
}
