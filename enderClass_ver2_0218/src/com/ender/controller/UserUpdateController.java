package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class UserUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String nextPage = null;
		
		String userID = request.getParameter("userID");
		String setPW = request.getParameter("userPW");
		String setHP = request.getParameter("userPhone");
		
		UserDTO vo = new UserDTO();
		
		UserDAO dao = new UserDAO();
		
		vo.setUserID(userID);
		vo.setUserPW(setPW);
		vo.setUserPhone(setHP);

		int cnt = dao.userUpdate(vo);
		
		if (cnt > 0) {
			nextPage = "profileForm";
		} else {
			throw new ServletException("not update");
		}
		return nextPage;
	}
}
