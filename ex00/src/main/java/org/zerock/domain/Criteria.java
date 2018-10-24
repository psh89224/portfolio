package org.zerock.domain;

public class Criteria {
	
	private int page;
	private int perPageNum;
	
	private String searchType;	// �˻��� �ʿ��� String
	private String keyword;		// �˻��� �ʿ��� String
	
	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {
		if(perPageNum != 10) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	
	//method for MyBatis SQL Mapper
	public int getPageStart() {
		return (this.page -1) * perPageNum;
	}
	
	//method for MyBatis SQL Mapper
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	// �˻��� �ʿ��� SearchCriteria
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	// ����¡ ó��
	@Override
	public String toString() {
		return "Criteria [page=" +page+ ", " + "perPageNum=" +perPageNum+ "]";
	}
	// �˻� ó��
	public String toString1() {
		return toString() + "Criteria" + "[searchType=" +searchType+ ", keyword=" +keyword+ "]";
	}
}
