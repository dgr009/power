package com.icia.api.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemReviewReple {
private int reviewRepleNo;
private int reviewNo;
private Date reviewRepleDate;
private String reviewRepleCotent;

}
