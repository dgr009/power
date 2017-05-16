package com.icia.palette.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PointStateMent {
	private Date tradeDate;
	private String userId;
	private int tradePoint;
	private String tradeContent;
}
