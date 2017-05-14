package com.icia.api.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DeliveryList {
 private String itemName;
 private int itemNo;
 private int orderSize;
 private int orderPrice;
 private Date deliDate;
}
