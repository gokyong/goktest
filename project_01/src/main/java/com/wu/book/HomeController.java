package com.wu.book;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wu.book.dao.BDao;
import com.wu.book.dto.BookcontentDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/menu")
	public String menu() {
		return "menu";
	}
	
	
	@RequestMapping("/booklist")
	public String list(Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("booklist", dao.booklistDao());
		
		return "book/booklist";
	}
	
	@RequestMapping("/writebook_form")
	public String writebook_form() {
		return "book/writebook_form";
	}

	@RequestMapping("/writebook")
	public String writebook(HttpServletRequest request, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.bookwriteDao(request.getParameter("Bname"), request.getParameter("Bcontent"), request.getParameter("Bwriter"), request.getParameter("Bcompany"));
		return "redirect:booklist";
	}
	
	@RequestMapping("/bookview")
	public String bookview(@RequestParam String bname, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("bookview", dao.bookviewDao(bname));
		
		return "book/bookview";
	}

	@RequestMapping("/bookmodify_form")
	public String bookmodify_form(@RequestParam String bname, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("bookview", dao.bookviewDao(bname));
		
		return "book/bookmodify_form";
	}
	
	@RequestMapping("/bookmodify")
	public String bookmodify(@ModelAttribute BookcontentDto dto, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.bookmodifyDao(dto.getBname(), dto.getBcontent(), dto.getBwriter(), dto.getBcompany());
		return "redirect:booklist";
	}
	
	@RequestMapping("/bookdelete")
	public String bookdelete(@ModelAttribute BookcontentDto dto, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.bookdeleteDao(dto.getBname());
		return "redirect:booklist";
	}
	
}

