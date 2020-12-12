package com.wu.book.dao;

import java.util.ArrayList;

import com.wu.book.dto.BookcontentDto;

public interface BDao {
	
	public ArrayList<BookcontentDto> booklistDao();
	public void bookwriteDao(String bname, String Bcontent, String Bwriter, String Bcompany);
	public ArrayList<BookcontentDto> bookviewDao(String bname);
	public void bookmodifyDao(String bname, String Bcontent, String Bwriter, String Bcompany);
	public void bookdeleteDao(String bname);
}
