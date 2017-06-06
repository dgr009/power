package com.icia.palette.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InquiryBoard {
private int inquiryNo;
private String inquiryTitle;
private String inquiryContent;
private Date inquiryDate;
private int itemNo;
private String userId;
	
}
