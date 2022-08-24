package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.model.CartDAO;
import com.ender.model.CartVO;

public class UserCartDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
 		String[] c_num = request.getParameterValues("isCheck");
 		HttpSession session = request.getSession();
		String userID= (String)session.getAttribute("userID");
 		String nextPage = "";
 		if (c_num!=null) {
 				for (int i = 0; i < c_num.length; i++) {
 			
 			CartDAO dao = new CartDAO();
 			CartVO vo = new CartVO();
 			vo.setuserID(userID);
 			vo.setC_num(Integer.parseInt(c_num[i]));
 			int cnt = dao.cartDelete(vo);
 			if (cnt > 0) {
 				nextPage = "redirect:/userCartList.do";
 			} else {
 				throw new ServletException("Not Insert");
 			}
 			}

 			}
 			return nextPage;
 		}
}