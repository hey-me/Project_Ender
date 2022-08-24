package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;

public class UserImageController implements Controller{

	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userID = request.getParameter("userID");
		
		UserDAO dao = new UserDAO();
		
		int cnt = dao.userImage(userID);
		
		if (cnt > 0) {
			return "https:";
		} else {
			throw new ServletException("not Image Loading");
		}
	}
}
