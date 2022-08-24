package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.BookDAO;

public class BookDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int b_num=Integer.parseInt( request.getParameter("b_num") );
 		
 		BookDAO dao=new BookDAO();
 		int cnt=dao.bookDelete(b_num);
 		String nextPage=null;
 		if(cnt>0) {
 			nextPage= "redirect:/bookList.do";
 		} else {
 			throw new ServletException("not delete");
 		}
		
		return nextPage;
	}

}