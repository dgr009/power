package com.icia.api.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemReview {
	private int reviewNo;
	private String reviewContent;
	private float reviewScore;
	private Date reviewDate;
	private String userId;
	private int itemNo;
	
}
