package com.ender.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class UserListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDAO dao = new UserDAO();
		List<UserDTO> list = dao.userList();

		request.setAttribute("list", list);
		
		System.out.println("list1 : " + list);

		return "adminDashList";
	}
}
