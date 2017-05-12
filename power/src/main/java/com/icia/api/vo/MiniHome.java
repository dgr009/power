package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MiniHome {
	private String userId;
	private String homeTitle;
	private String homeImg;
	private int homeDesign;
	private Date homeOpne;
	private int homeHits;
	private String homeIntroduce;
}
