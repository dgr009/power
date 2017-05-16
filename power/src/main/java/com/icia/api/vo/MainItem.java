package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MainItem {
	private int itemNo;
	private String itemName;
	private String itemContent;
	private int itemPrice;
	private int item_size;
	private int itemInven;
	private Date itemDate;
	private String imgName;
}
