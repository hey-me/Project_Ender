package com.ender.controller;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.ender.model.BookDAO;
import com.ender.model.BookVO;


public class UserBookListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BookDAO dao = new BookDAO();
				
		List<BookVO> list = dao.bookList();
		
		request.setAttribute("userbooklist", list);

		return "userBookList";
	}

}