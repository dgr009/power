package com.icia.api.util;

import com.icia.api.vo.*;

public class PagingUtil {
	private static int sizeOfPagination = 5;		// 화면 하단에 출력할 페이지의 수
	private static int numberOfArticleForPage = 10;		// 한페이지당 출력할 글의 개수
	public static Pagination setPageMaker(int pageNo, int numberOfTotalArticle) {		
		int numberOfTotalPage;					
		int groupNo;
		int startArticle;			// 첫번째 글의 번호
		int endArticle;				// 마지막 글의 번호
		int startPage;				// 화면 하단 페이지 그룹의 첫 페이지 번호
		int endPage;				// 화면 하단 페이지 그룹의 마지막 페이지 번호	
		int prev;					// 이전으로 버튼에 링크할 페이지 번호
		int next;					// 다음으로 버튼에 링크할 페이지 번호
									// prev, next의 값이 -1인 경우 버튼 출력 안함
		Pagination pagination = new Pagination();
		numberOfTotalPage = (numberOfTotalArticle-1)/numberOfArticleForPage +1;
		if(pageNo>numberOfTotalPage) pageNo = numberOfTotalPage;
		startArticle = (pageNo-1)*numberOfArticleForPage+1;
		endArticle = pageNo*numberOfArticleForPage;
		pagination.setStartArticle(startArticle);
		pagination.setEndArticle(endArticle);
		groupNo = ((pageNo-1)/sizeOfPagination);
		startPage = groupNo*sizeOfPagination+1;
		endPage = startPage + sizeOfPagination - 1;
		if(endPage>=numberOfTotalPage) endPage = numberOfTotalPage;
		else endPage = startPage + sizeOfPagination -1;
		pagination.setStartPage(startPage);
		pagination.setEndPage(endPage);
		prev = startPage-1;
		if(prev<=0) prev=-1;
		next = endPage + 1;
		if(endPage>=numberOfTotalPage) next = -1;
		pagination.setPrev(prev);
		pagination.setNext(next);
		pagination.setPageNo(pageNo);
		return pagination;
	}
}