package com.icia.palette.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class InquiryReple {
private int inquiryRepleNo;
private String inquiryRepleContent;
private Date inquiryRepleDate;
private String userId;
private int inquiryNo;
}
