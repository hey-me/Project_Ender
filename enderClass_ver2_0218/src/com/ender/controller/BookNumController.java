package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BookNumController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ctp = request.getContextPath();
		
		int b_num = Integer.parseInt(request.getParameter("b_num"));

		request.setAttribute("b_num", b_num);
		String nextPage = "redirect:/classRegister.do";

		return nextPage;
	}
}
