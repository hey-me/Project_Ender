package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ender.model.ClassDAO;
import com.ender.model.ClassVO;

public class ClassInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String ctp = request.getContextPath();
		request.setCharacterEncoding("utf-8");
		
		String c_name = request.getParameter("c_name");
		String c_tr = request.getParameter("c_tr");
		int c_price = Integer.parseInt(request.getParameter("c_price"));
		int c_content = Integer.parseInt(request.getParameter("c_content"));
		String c_info = request.getParameter("c_info");
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		
		ClassVO vo = new ClassVO();
		
		vo.setName(c_name);
		vo.setTr(c_tr);
		vo.setPrice(c_price);
		vo.setContent(c_content);
		vo.setInfo(c_info);
		vo.setB_num(b_num);

		ClassDAO dao = new ClassDAO();
		int cnt = dao.classInsert(vo);
		String nextPage = null;
		if (cnt > 0) {
			nextPage = "redirect:/classList.do";
		} else {
			throw new ServletException("Not Insert");
		}

		return nextPage;
	}

}
