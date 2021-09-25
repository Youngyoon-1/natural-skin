package com.naturalskin.dto;

public class PagingDto {
	private int page = 1; //초기값은 첫페이지이므로 1
	private int totalPage;
	private int startPage; 
	private int endPage;
	private int countPage = 5;   //보여줄페이지 갯수
	private int countPerPage = 50; //한페이지에 나타낼 갯수 //초기값추후에 수정하기 재사용시 50은 큰수같음
	private int startRN;
	private int endRN;

	public PagingDto init(int totalCount) {
		calcTotalPage(totalCount);
		calcPage();    //사용자가 없는 페이지 요청했을 경우 page값을 첫페이지 또는 마지막 페이지로 바꿔준다.
		calcStartPage();
		calcEndPage(); 
		calcStartRN();
		calcEndRN();
		return this;
	}
	
	public void calcTotalPage(int totalCount) {
		if(totalCount % countPerPage == 0) {
			this.totalPage = totalCount / countPerPage;
		}else {
			this.totalPage = totalCount / countPerPage + 1;
		}
	}
	
	public void calcStartPage() {
		if(page - (countPage - 1) / 2 < 1) {
			this.startPage = 1;
		}else{
			startPage = page - (countPage - 1) / 2;
		}
	}
	public void calcEndPage() {
		this.endPage =  (this.countPage - 1) + this.startPage;
		if(this.endPage > this.totalPage) {
			this.endPage = this.totalPage;
		}
	}
	
	public void calcPage() {			//사용자가 없는 페이지 요청했을 경우
		if(page > totalPage) {  
			this.page = totalPage;
		}else if(page == 0 || page < 0 ) {
			this.page = 1;
		}
	}
	
	public void calcStartRN() {
		startRN = countPerPage * (page-1) + 1;
	}
	public void calcEndRN() {
		endRN = countPerPage * page;
	}
	public int getStartRN() {
		return startRN;
	}

	public int getEndRN() {
		return endRN;
	}

	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) { 
		this.page = page;
	}
	
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getCountPage() {
		return countPage;
	}

	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}
	
}
