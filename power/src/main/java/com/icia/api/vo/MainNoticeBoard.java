package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainNoticeBoard {
	private int mainNoticeArticleNo;
	private String mainNoticeArticleTitle;
	private String mainNoticeArticleContent;
	private Date mainNoticeArticleDate;
	private int mainNoticeArticleHits;
}
