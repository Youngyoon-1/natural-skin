package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.naturalskin.dao.OrderDao;
import com.naturalskin.dto.OrderDto;
import com.naturalskin.dto.PagingDto;

@Service
public class OrderService {

	private final OrderDao orderDao;
	
	public OrderService(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	public List<OrderDto> findList(OrderDto orderDto, PagingDto pagingDto) {
		Map hashMap = new HashMap();
		hashMap.put("orderDto", orderDto);
		hashMap.put("pagingDto", pagingDto);
		return orderDao.findList(hashMap);
	}

	public int findOrderCount(OrderDto orderDto) {
		return orderDao.findOrderCount(orderDto);
	}

	public OrderDto findById(OrderDto orderDto) {
		return orderDao.findById(orderDto);
	}

	public int modify(OrderDto orderDto) {
		return orderDao.modify(orderDto);
	}

	public int delete(OrderDto orderDto) {
		return orderDao.delete(orderDto);
	}

}
