package com.mycompany.myapp.checker.dto;

public class MemberDto {

	private int member_code;
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_phone;
	private String member_email;
	private String member_create_date;
	private int member_buy_code;
	private String member_level;

	public MemberDto() {
	}

	public MemberDto(int member_code, String member_id, String member_password, String member_name, String member_phone,
			String member_email, String member_create_date, int member_buy_code, String member_level) {
		super();
		this.member_code = member_code;
		this.member_id = member_id;
		this.member_password = member_password;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_create_date = member_create_date;
		this.member_buy_code = member_buy_code;
		this.member_level = member_level;
	}

	public int getMember_code() {
		return member_code;
	}

	public String getMember_id() {
		return member_id;
	}

	public String getMember_password() {
		return member_password;
	}

	public String getMember_name() {
		return member_name;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public String getMember_email() {
		return member_email;
	}

	public String getMember_create_date() {
		return member_create_date;
	}

	public int getMember_buy_code() {
		return member_buy_code;
	}

	public String getMember_level() {
		return member_level;
	}

	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public void setMember_create_date(String member_create_date) {
		this.member_create_date = member_create_date;
	}

	public void setMember_buy_code(int member_buy_code) {
		this.member_buy_code = member_buy_code;
	}

	public void setMember_level(String member_level) {
		this.member_level = member_level;
	}

	public void printInfo() {
		System.out.println(this.getClass().getName() + ".printInfo()::member_code=" + member_code);
		System.out.println(this.getClass().getName() + ".printInfo()::member_id=" + member_code);
		System.out.println(this.getClass().getName() + ".printInfo()::member_password=" + member_code);
		System.out.println(this.getClass().getName() + ".printInfo()::member_name=" + member_code);
		System.out.println(this.getClass().getName() + ".printInfo()::member_phone=" + member_phone);
		System.out.println(this.getClass().getName() + ".printInfo()::member_email=" + member_email);
		System.out.println(this.getClass().getName() + ".printInfo()::member_create_date=" + member_create_date);
		System.out.println(this.getClass().getName() + ".printInfo()::member_buy_code=" + member_buy_code);
		System.out.println(this.getClass().getName() + ".printInfo()::member_level=" + member_level);
	}

}
