package com.mypage.dto;

public class CriteriaDTO {
	private int page;		//페이지번호(하단의 번호들 클릭)
	private int perPageNum; //한 페이지에 보여줄 게시글 수
	private String keyword;
	
	public CriteriaDTO(int page, int perPageNum, String keyword) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.keyword = keyword;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public CriteriaDTO() {
		//디폴트 생성자에 기본적으로 1페이지/10개의 페이지 넘버 보여줌
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		//1페이지 보다 더 적게 누르려고 할 때
		if (page <=0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	//method for myBatis SQL Mapper: 조회 시작 Row 취득하는 메서드
	public int getPageStart() {
		return (((this.page-1)* perPageNum)+1);
	}
	
	//method for myBatis SQL Mapper: 조회 마지막 Row 취득하는 메서드
	public int getPerPageNum() {
		return this.page * perPageNum;
		// 2페이지 x 10 = 20번 게시글 까지 출력
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	
}
