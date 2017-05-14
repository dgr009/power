package com.icia.api.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
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
