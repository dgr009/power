package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainFreeBoardList {
	private int mainArticleNo;
	private String mainArticleTitle;
	private String mainArticleName;
	private int mainArticleHits;
	private Date mainArticleDate;
}
