package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ApplicantList {
	private String userId;
	private String userName;
	private String userPost;
	private String userMail;
	private String userPhone;
	private Date orderDate;
	private int orderPrice;
	private int orderSize;
	private int orderNo;
	private int itemNo;
	private String orderState;
}
