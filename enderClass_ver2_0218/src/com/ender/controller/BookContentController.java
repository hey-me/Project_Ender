package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.BookDAO;
import com.ender.model.BookVO;


public class BookContentController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int b_num=Integer.parseInt(request.getParameter("b_num"));
		
		BookDAO dao=new BookDAO();
		BookVO vo=dao.bookContent(b_num);
		
		request.setAttribute("vo", vo);

		return "bookContent";
	}

}
