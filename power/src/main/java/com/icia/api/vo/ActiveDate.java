package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ActiveDate {
	private int activeNo;
	private Date homeStart;
	private Date homeEnd;
	private String userId;
}
