package com.icia.palette.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemImg {
 private int imgNo;
 private String imgName;
 private int itemNO;
	public ItemImg(String imgname){
		this.imgName=imgname;
	}
}
