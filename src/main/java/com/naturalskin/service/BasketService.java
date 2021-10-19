package com.naturalskin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.naturalskin.dao.BasketDao;
import com.naturalskin.dto.BasketDto;

@Service
public class BasketService {

	private final BasketDao basketDao;
	
	public BasketService(BasketDao basketDao) {
		this.basketDao = basketDao;
	}
	
		
	public boolean add(BasketDto basketDto) {
		if(basketDao.findByIds(basketDto) != null) {  //멤버아이디와 상품아이디 조회후 null이 아니라면 수정
			int result = basketDao.add(basketDto);
			System.out.println(result);
			if(result == 1) {
				return true;
			}
			return false;
		}else {
			int result = basketDao.insert(basketDto);
			if(result == 1) {
				return true;
			}
			return false;
		}
	}


	public List<BasketDto> findById(String member_id) {
		return basketDao.findById(member_id);
	}


	public boolean modify(BasketDto basketDto) {
		int result = basketDao.modify(basketDto);
		if(result == 1) {
			return true;
		}
		return false;
	}


	public String getBasketPrice(BasketDto basketDto) {
		return Integer.toString(basketDao.getBasketPrice(basketDto));
	}


	public int deleteById(BasketDto basketDto) {
		return basketDao.deleteById(basketDto);
	}


	public int deleteAll(BasketDto basketDto) {
		return basketDao.deleteAll(basketDto);
	}
	
}
