package com.wu.book.dto;

public class BookcontentDto {
	
	private String Bname;
	private String Bcontent;
	private String Bwriter;
	private String Bcompany;
	private String join_date;

	public BookcontentDto() {
		// TODO Auto-generated constructor stub
	}

	public BookcontentDto(String bname, String bcontent, String bwriter, String bcompany, String join_date) {
		this.Bname = bname;
		this.Bcontent = bcontent;
		this.Bwriter = bwriter;
		this.Bcompany = bcompany;
		this.join_date = join_date;
	}

	public String getBname() {
		return Bname;
	}

	public void setBname(String bname) {
		Bname = bname;
	}

	public String getBcontent() {
		return Bcontent;
	}

	public void setBcontent(String bcontent) {
		Bcontent = bcontent;
	}

	public String getBwriter() {
		return Bwriter;
	}

	public void setBwriter(String bwriter) {
		Bwriter = bwriter;
	}

	public String getBcompany() {
		return Bcompany;
	}

	public void setBcompany(String bcompany) {
		Bcompany = bcompany;
	}

	public String getJoin_date() {
		return join_date;
	}

	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	
	
}
