package com.naturalskin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.naturalskin.dao.OrderDao;
import com.naturalskin.dao.OrderDetailDao;
import com.naturalskin.dto.OrderDetailDto;
import com.naturalskin.dto.OrderDto;
import com.naturalskin.dto.OrderListDto;
import com.naturalskin.dto.PagingDto;
import com.naturalskin.utils.GenerateOrderNo;

@Service
public class OrderService {

	private final OrderDao orderDao;
	private final OrderDetailDao orderDetailDao;
	private final GenerateOrderNo generateOrderNo;
	
	public OrderService(OrderDao orderDao, GenerateOrderNo generateOrderNo, OrderDetailDao orderDetailDao) {
		this.orderDao = orderDao;
		this.orderDetailDao = orderDetailDao;
		this.generateOrderNo = generateOrderNo;
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
    @Transactional
	public int insert(OrderDto orderDto, OrderDetailDto orderDetailDto, OrderListDto orderListDto) {
		int nextVal = orderDao.getSeqNextVal();
		long orderNo = generateOrderNo.init(nextVal);
		orderDto.setMember_order_id(orderNo); //date+seq으로 생성된 주문번호 넣어줌
		orderDetailDto.setMember_order_id(orderNo); //date+seq으로 생성된 주문번호 넣어줌
		orderDto.setProduct_name_arr(orderListDto.getProduct_name());
		int orderResult = orderDao.insert(orderDto);
		if(orderResult == 1) {
			if(orderListDto.getProduct_id().length != 0) {
				for(int i=0; i < orderListDto.getProduct_id().length; i++) {
				    orderDetailDto.setProduct_id(orderListDto.getProduct_id()[i]);
				    orderDetailDto.setOrder_detail_amount(orderListDto.getOrder_detail_amount()[i]);
				    orderDetailDto.setOrder_detail_price(orderListDto.getOrder_detail_price()[i]);
				    orderDetailDto.setProduct_name(orderListDto.getProduct_name()[i]);
				    orderDetailDto.setProduct_price(orderListDto.getProduct_price()[i]);
				    orderDetailDto.setProduct_img_path(orderListDto.getProduct_img_path()[i]);
				    orderDetailDao.insert(orderDetailDto);
				}
				return 1;
			}
			return orderDetailDao.insert(orderDetailDto);
		}
		return 0;
	}

	public List<OrderDetailDto> findOrderDetail(OrderDto orderDto) {
		return orderDetailDao.findById(orderDto);
	}

	public int update(OrderDto orderDto) {
		return orderDao.update(orderDto);
	}
	@Transactional
	public int updateState(OrderDto orderDto) {
		int result = orderDao.updateState(orderDto);
		if(result == 1) {
			orderDetailDao.updateReStateByOrderId(orderDto);
			return 1;
		}
		return 0;
	}

	public OrderDetailDto findDetailById(OrderDetailDto orderDetailDto) {
		return orderDetailDao.findDetailById(orderDetailDto);
	}

	public int updateReviewState(String order_detail_id) {
		return orderDetailDao.updateReviewState(order_detail_id);
	}

	public List<OrderDetailDto> findCanReview(String member_id) {
		return orderDetailDao.findCanReview(member_id);
	}

	public int findOrderCountById(OrderDto orderDto) {
		return orderDao.findOrderCountById(orderDto);
	}

	public List<OrderDto> findListById(OrderDto orderDto, PagingDto pagingDto) {
		Map map = new HashMap();
		map.put("orderDto", orderDto);
		map.put("pagingDto", pagingDto);
		return orderDao.findListById(map); 
	}

}
