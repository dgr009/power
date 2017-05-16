package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainMiniHomePage {
	private String userId;
	private String homeTitle;
	private String homeImg;
	private int homeHits;
	private String homeIntroduce;
	private Date homeOpen;
	
}
