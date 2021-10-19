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

	int getSeqNextVal();

	int insert(OrderDto orderDto);

	List<OrderDto> findListById(Map map);

	int update(OrderDto orderDto);

	int updateState(OrderDto orderDto);

	int findOrderCountById(OrderDto orderDto);
}
