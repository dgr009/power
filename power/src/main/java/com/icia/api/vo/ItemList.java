package com.icia.api.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemList {
private int itemNo;
private String itemName;
private int price;
private int inven;
private String imgName;
}
