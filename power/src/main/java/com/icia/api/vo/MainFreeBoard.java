package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainFreeBoard {
	private int mainArticleNo;
	private String mainArticleTitle;
	private String mainArticleName; //작성자
	private int mainArticleHits;
	private String mainArticleContent;
	private	Date mainArticleDate;
	private String userId;
	private int mainArticleRepleCnt;
}

