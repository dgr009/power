package com.icia.api.vo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ApplicantList {
	private String userId;
	private String userName;
	private String userPost;
	private String userMail;
	private String userPhone;
}
