package com.icia.api.vo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Basket {
	private String imgName;
	private String itemName;
	private int itemPrice;
	private int itemInven;
}
