package com.icia.palette.vo;

import java.sql.*;

import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainNotice {
	private int mainNoticeArticleNo;
	private String mainNoticeArticleTitle;
	private String mainNoticeArticleContent;
	private Date mainNoticeArticleDate;
	private int mainNoticeArticleHits;

}
