package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.ClassDAO;
import com.ender.model.ClassVO;

public class ClassUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		request.setCharacterEncoding("utf-8");
		int c_num = Integer.parseInt(request.getParameter("c_num"));
		String c_name=request.getParameter("c_name");
		String c_tr=request.getParameter("c_tr");
		int c_price=Integer.parseInt(request.getParameter("c_price"));
		int c_content=Integer.parseInt(request.getParameter("c_content"));
		String c_info=request.getParameter("c_info");
		
		ClassVO vo=new ClassVO();
		vo.setNum(c_num);
		vo.setName(c_name);
		vo.setTr(c_tr);
		vo.setPrice(c_price);
		vo.setContent(c_content);
		vo.setInfo(c_info);
		
		
		ClassDAO dao=new ClassDAO();
		int cnt=dao.classUpdate(vo);
		String nextPage=null;
		if(cnt>0) {
			nextPage="redirect:/classList.do";
		} else {
			throw new ServletException("not update");
		}
		
		return nextPage;
	}

}
