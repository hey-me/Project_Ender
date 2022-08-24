package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.model.CartDAO;
import com.ender.model.CartVO;

public class UserCartInsertController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String ctp = request.getContextPath();

		//세션으로 받는 걸로 수정하기
		HttpSession session = request.getSession();
		String userID= (String)session.getAttribute("userID");
		
		System.out.println("아이디 : " + userID);
		int c_num = Integer.parseInt(request.getParameter("c_num"));
		int b_num = Integer.parseInt(request.getParameter("b_num"));


		CartVO vo = new CartVO();
		vo.setuserID(userID);
		vo.setC_num(c_num);
		vo.setB_num(b_num);
		
		CartDAO dao = new CartDAO();
		int cnt = dao.cartInsert(vo);
		String nextPage = null;
		if (cnt > 0) {
			nextPage = "redirect:/userClassList.do";
		} else {
			throw new ServletException("Not Insert");
		}

		return nextPage;
	}
}
