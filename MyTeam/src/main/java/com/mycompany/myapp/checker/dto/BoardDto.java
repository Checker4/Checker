package com.mycompany.myapp.checker.dto;

public class BoardDto {

	private int board_code;
	private String board_title;
	private String board_contents;
	private String board_name;
	private String board_create_date;
	private String board_update_date;
	private int board_count;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int board_code, String board_title, String board_contents, String board_name,
			String board_create_date, String board_update_date, int board_count) {
		super();
		this.board_code = board_code;
		this.board_title = board_title;
		this.board_contents = board_contents;
		this.board_name = board_name;
		this.board_create_date = board_create_date;
		this.board_update_date = board_update_date;
		this.board_count = board_count;
	}
	
	public int getBoard_code() {
		return board_code;
	}
	public String getBoard_title() {
		return board_title;
	}
	public String getBoard_contents() {
		return board_contents;
	}
	public String getBoard_name() {
		return board_name;
	}
	public String getBoard_create_date() {
		return board_create_date;
	}
	public String getBoard_update_date() {
		return board_update_date;
	}
	public int getBoard_count() {
		return board_count;
	}
	public void setBoard_code(int board_code) {
		this.board_code = board_code;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public void setBoard_contents(String board_contents) {
		this.board_contents = board_contents;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public void setBoard_create_date(String board_create_date) {
		this.board_create_date = board_create_date;
	}
	public void setBoard_update_date(String board_update_date) {
		this.board_update_date = board_update_date;
	}
	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}
	
	
}
