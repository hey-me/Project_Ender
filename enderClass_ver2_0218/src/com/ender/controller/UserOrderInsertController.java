package com.ender.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.model.OrderDAO;
import com.ender.model.OrderVO;

public class UserOrderInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		String ctp = request.getContextPath();
		request.setCharacterEncoding("utf-8");
		
		//세션으로 받는 걸로 수정하기
		HttpSession session = request.getSession();
		String userID= (String)session.getAttribute("userID");
		String[] c_num = request.getParameterValues("isCheck");
		String[] b_num = request.getParameterValues("b_num");

			
		String nextPage = "";
		if (c_num != null) {
			for (int i = 0; i < c_num.length; i++) {
				
		OrderVO vo = new OrderVO();
		vo.setuserID(userID);
		vo.setC_num(Integer.parseInt(c_num[i]));
		vo.setB_num(Integer.parseInt(b_num[i]));
		OrderDAO dao = new OrderDAO();
		int cnt = dao.orderInsert(vo);
		if (cnt > 0) {
			nextPage = "redirect:/userOrderList.do";
		} else {
			throw new ServletException("Not Insert");
		}
		}

		}
		return nextPage;
	}
}