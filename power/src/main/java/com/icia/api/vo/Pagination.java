package com.icia.api.vo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pagination {
	private int pageNo;
	private int startArticle;
	private int endArticle;
	private int startPage;
	private int endPage;
	private int prev;
	private int next;
}

