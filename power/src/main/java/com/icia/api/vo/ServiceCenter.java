package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ServiceCenter {
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private Date faqDate;
	
}
