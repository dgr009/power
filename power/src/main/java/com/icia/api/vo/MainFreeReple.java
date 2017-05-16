package com.icia.api.vo;

import java.sql.*;

import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainFreeReple {
	private int mainFreeRepleNo;
	private int mainArticleNo;
	private String mainFreeRepleName;
	private String mainFreeRepleContent;
	private Date mainFreeDate;
}
