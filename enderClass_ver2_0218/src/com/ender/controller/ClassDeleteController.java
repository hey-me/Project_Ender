package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.ClassDAO;

public class ClassDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		int c_num=Integer.parseInt( request.getParameter("c_num") );
 		
 		ClassDAO dao=new ClassDAO();
 		int cnt=dao.classDelete(c_num);
 		String nextPage=null;
 		if(cnt>0) {
 			nextPage= "redirect:/classList.do";
 		} else {
 			throw new ServletException("not delete");
 		}
		
		return nextPage;
	}

}