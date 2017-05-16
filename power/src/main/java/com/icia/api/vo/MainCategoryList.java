package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainCategoryList {
	private int itemNo;
	private String itemName;
	private String itemContent;
	private int itemPrice;
	private int itemSize;
	private int itemInven;
	private Date itemDate;
	private String userId;
	private String imgName;
}
