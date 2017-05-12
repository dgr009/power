package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MiniHomeNotice {
	private int noticeArticleNo;		//번호
	private String noticeArticleTitle;	//제목
	private String noticeArticleContent;//내용
	private Date noticeArticleDate;		//시간
	private String userId;				//아이디
}
