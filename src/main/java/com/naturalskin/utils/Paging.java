package com.naturalskin.utils;


import com.naturalskin.dto.PagingDto;

public class Paging {
	private int totalPage;
	private int startPage; 
	private int endPage;
	private int countPage = 10;   //기본값10
	
	public void calcTotalPage(int totalCount, int countPerPage) {
		if(totalCount % countPerPage == 0) {
			this.totalPage = totalCount / countPerPage;
		}
		this.totalPage = totalCount / countPerPage + 1;
	}

	public void calcStartPage(int currentPage) {
		if(currentPage - (this.countPage - 1) / 2 < 1) {
			this.startPage = 1;
		}
		this.startPage = currentPage - (this.countPage - 1) / 2;
	}
	
	public void calcEndPage() {
		this.endPage =  (this.countPage - 1) + this.startPage;
	}

	public void initPaging(int totalCount, int countPerPage, int currentPage) {
//		setTotalPage(totalCount, countPerPage);
//		setStartPage(currentPage);
//		setEndPage(); 
	}
	
	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}

}
