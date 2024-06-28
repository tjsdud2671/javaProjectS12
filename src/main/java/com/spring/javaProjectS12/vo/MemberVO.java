package com.spring.javaProjectS12.vo;

import lombok.Data;

@Data
public class MemberVO {
	private int idx;
	private String lastName;
	private String name;
	private String email;
	private String password;
	private int level;
}
