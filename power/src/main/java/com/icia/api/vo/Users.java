package com.icia.api.vo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
	private String userId;
	private String userPwd;
	private String userName;
	private String userAddress;
	private String userPost;
	private String userMail;
	private String userPhone;
	private int userPoint;
	private String userIsHome;
	private String enabled;
	private String userGrade;
	
	
}
