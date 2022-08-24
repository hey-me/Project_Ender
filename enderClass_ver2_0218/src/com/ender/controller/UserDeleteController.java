package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.usermodel.UserDAO;

public class UserDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nextPage = null;

		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");

		System.out.println("userID : " + userID);
		
		UserDAO dao = new UserDAO();

		int cnt = dao.userDelete(userID);
		session.invalidate();
		
		if (cnt > 0) {
			nextPage = "redirect:/ender.jsp";
		} else {
			throw new ServletException("not delete");
		}
		return nextPage;
	}
}
