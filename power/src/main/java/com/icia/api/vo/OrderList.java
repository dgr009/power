package com.icia.api.vo;

import lombok.*;

@Data
public class OrderList {
	private int orderNo;
	private int orderSize;
	private String orderState;
	private int orderPrice;
	private String itemName;
}
