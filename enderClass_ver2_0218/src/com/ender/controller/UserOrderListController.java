package com.ender.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.model.BookDAO;
import com.ender.model.BookVO;
import com.ender.model.CartDAO;
import com.ender.model.CartListDAO;
import com.ender.model.CartListVO;
import com.ender.model.CartVO;
import com.ender.model.ClassDAO;
import com.ender.model.ClassVO;
import com.ender.model.OrderDAO;
import com.ender.model.OrderListVO;
import com.ender.model.OrderVO;

public class UserOrderListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		int userID = Integer.parseInt(request.getParameter("userID"));

		OrderDAO dao = new OrderDAO();
		HttpSession session = request.getSession();
		String userID= (String)session.getAttribute("userID");
		List<OrderListVO> list = dao.orderList(userID);

		request.setAttribute("userorderlist", list);
		
		return "userOrderList";
	

	}
}