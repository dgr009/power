package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderStatement {
	private int orderNo;
	private String orderState;
	private int orderSize;
	private int orderPrice;
	private Date orderDate;
	private int itemNo;
	private String userId;

}
