package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MiniHomeFreeReple {
	private int freeRepleNo;
	private String freeNo;
	private String freeRepleName;
	private Date freeRepleContent;
	private String freeRepleDate;
}
