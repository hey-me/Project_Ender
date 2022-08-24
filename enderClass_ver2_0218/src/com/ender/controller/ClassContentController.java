package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.ClassDAO;
import com.ender.model.ClassVO;

public class ClassContentController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int c_num=Integer.parseInt(request.getParameter("c_num"));
		
		ClassDAO dao=new ClassDAO();
		ClassVO vo=dao.classContent(c_num);
		
		request.setAttribute("vo", vo);
		
		return "classContent";
	}

}
