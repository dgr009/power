package com.icia.palette.vo;

import java.sql.*;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MiniHomeInformation {
	private String userName;
	private String userMail;
	private String userPhone;
	private String userGrade;
	private String homeIntroduce;
	private String homeTitle;
	
}
