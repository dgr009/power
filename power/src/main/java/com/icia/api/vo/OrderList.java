package com.icia.api.vo;

import java.sql.Date;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderList {
	private int orderNo;
	private String orderState;
	private int orderSize;
	private int orderPrice;
	private Date orderDate;
	private String optionName;
	private int itemNo;
	private String itemName;
	private String userId;

}
