package com.ender.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.BookDAO;
import com.ender.model.BookVO;

public class BookInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");		

		String b_name = request.getParameter("b_name");
		String b_image = request.getParameter("b_image");
		String b_pub=request.getParameter("b_pub");
		int b_price = Integer.parseInt(request.getParameter("b_price"));
		String b_info = request.getParameter("b_info");

		BookVO vo = new BookVO();
		vo.setB_name(b_name);
		vo.setB_image(b_image);
		vo.setB_pub(b_pub);
		vo.setB_price(b_price);
		vo.setB_info(b_info);
		
		BookDAO dao = new BookDAO();
		int cnt = dao.bookInsert(vo);
		String nextPage = null;
		if (cnt > 0) {
			nextPage = "redirect:/bookRegister.do";
		} else {
			throw new ServletException("Not Insert");
		}

		return nextPage;
	}

}