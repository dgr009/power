package com.icia.palette.vo;

import java.sql.Date;
import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
	private int itemNo;
	private String itemName;
	private String itemContent;
	private int itemPrice;
	private int itemSize;
	private int itemInven;
	private Date itemDate;
	private String userId;
	private String smallKind;
	private ArrayList<ItemImg> itemImgList;
	private ArrayList<String> optionName;
}
