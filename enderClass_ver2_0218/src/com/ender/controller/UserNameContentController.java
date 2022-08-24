package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;

public class UserNameContentController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");

		UserDAO dao = new UserDAO();
		
		dao.userNameContent(userName);
		
		return null;
	}
}
