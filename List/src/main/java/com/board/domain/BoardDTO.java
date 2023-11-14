package com.board.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class BoardDTO {
	// CompanyAddInfo 테이블
	private String companyimg;
    private String detailedimg;
    private String announcement;
    private String repnumber;
    private String dayoff;
    private String breaktime;
	
	// COMPANY 테이블
	private String id;
    private String password;
    private String companyname;
    private String companylicense;
    private String companynumber;
    private String companyaddress;
    private String email;
    private String phone;
}
