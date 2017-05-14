package com.icia.api.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Delivery {
private int deliNo;
private Date deliDate;
private int orderNo;
}
