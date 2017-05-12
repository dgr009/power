package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MiniHomeFree {
	private int freeNo;
	private String freeTitle;
	private String freeName;
	private int freeHits;
	private String freeContent;
	private Date freeDate;
	private String userId;
}
