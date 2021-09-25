package com.naturalskin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.naturalskin.dto.OrderDto;

@Mapper
public interface OrderDao {

	List<OrderDto> findList(Map hashMap);

	int findOrderCount(OrderDto orderDto);

	OrderDto findById(OrderDto orderDto);

	int modify(OrderDto orderDto);

	int delete(OrderDto orderDto);

}
