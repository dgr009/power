package com.icia.palette.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ActiveDate {
	private int activeNo;
	private Date activeStart;
	private Date activeEnd;
	private String userId;
}
