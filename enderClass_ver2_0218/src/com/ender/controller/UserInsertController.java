package com.ender.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class UserInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String nextPage = null;

		String userName = request.getParameter("userName");
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPW");
		String userBirth = request.getParameter("userBirth");
		String userPhone = request.getParameter("userPhone");
		String userAddress = request.getParameter("userAddress");
		String userGrade = request.getParameter("userGrade");
		
		UserDTO vo = new UserDTO();
		
		if (userGrade.equals("admin")) {

			vo.setUserName(userName);
			vo.setUserID(userID);
			vo.setUserPW(userPassword);
			vo.setUserBirth(userBirth);
			vo.setUserPhone(userPhone);
			vo.setUserAddress(userAddress);
			vo.setUserGrade(3);
		} else {

			vo.setUserName(userName);
			vo.setUserID(userID);
			vo.setUserPW(userPassword);
			vo.setUserBirth(userBirth);
			vo.setUserPhone(userPhone);
			vo.setUserAddress(userAddress);
			vo.setUserGrade(1);
		}

		UserDAO dao = new UserDAO();

		int result = dao.userInsert(vo);

		if (result > 0) {
			nextPage = "redirect:/ender.jsp";
		} else {
			throw new ServletException("회원가입이 실패했습니다.");
		}
		return nextPage;
	}

}
