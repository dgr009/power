package com.icia.api.vo;

import java.sql.*;

import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainFreeReple {
	private int mainFreeRepleNo;
	private String mainFreeRepleName;
	private String mainFreeRepleContent;
	private Date mainFreeRepleDate;
	private int mainArticleNo;
}
