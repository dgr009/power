package com.icia.api.vo;

import java.sql.*;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerCenter {
private String faqContent;
private String faqTitle;
private int faqNo;
private Date faqDate;
}
