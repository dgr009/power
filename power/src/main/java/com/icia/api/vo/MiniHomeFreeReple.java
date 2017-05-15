package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MiniHomeFreeReple {
	private int freeRepleNo;
	private String freeRepleName;
	private String freeRepleContent;
	private Date freeRepleDate;
	private int freeNo;
}
