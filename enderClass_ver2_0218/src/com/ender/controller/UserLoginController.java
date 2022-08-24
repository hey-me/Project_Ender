package com.ender.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class UserLoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String path = request.getContextPath();
		
		String nextPage = null;
		int cnt = 0;

		String ID = request.getParameter("userID");
		String PW = request.getParameter("userPW");
		HttpSession session = request.getSession();

		System.out.println("ID : " + ID);

		System.out.println("입력 PW : " + PW);

		UserDAO dao = new UserDAO();

		UserDTO vo = dao.userIdContent(ID);

		if (vo != null) {

			String userID = vo.getUserID();
			System.out.println("DB아이디 : " + userID);

			String userPW = vo.getUserPW();
			System.out.println("DB비번 : " + userPW);

			cnt = dao.userLogin(vo);

			// 아이디와 비번 모두 일치

			if (ID.equals(userID) && PW.equals(userPW)) {
				System.out.println("입장 가능 cnt : " + cnt);
				session.setAttribute("userID", vo.getUserID());
				session.setAttribute("userName", vo.getUserName());
				session.setAttribute("userGrade", vo.getUserGrade());
				nextPage = "redirect:/ender.jsp";
			} else {

				cnt = cnt - 1;
				System.out.println("입장 불가 cnt : " + cnt);
			}

			if (cnt == 1) {
				return nextPage;

			} else {
				response.sendRedirect(path +"/ender.jsp?fail=1");

			}
		} else {
			// 아이디가 없을 경우
			PrintWriter out = response.getWriter();
			String notice = "ID does not exist.";
			out.println("<script type='text/javascript'>");
			out.println("alert('"+notice+"');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.flush();
		}
		return null;
	}
}
