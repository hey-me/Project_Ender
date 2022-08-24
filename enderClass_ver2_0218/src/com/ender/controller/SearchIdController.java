package com.ender.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class SearchIdController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String userName = request.getParameter("searchName");
		String userBirth = request.getParameter("searchBirth");

		UserDAO dao = new UserDAO();

		PrintWriter out = response.getWriter();

		JSONObject obj = new JSONObject();

		UserDTO vo = dao.userNameContent(userName);

		System.out.println("vo = " + vo);

		String realName = vo.getUserName();
		String realBirth = vo.getUserBirth();
		String realID = vo.getUserID();

		// 값이 존재
		if (vo != null) {
			// 해당 정보가 하나 존재
			if (dao.searchID(vo) == true) {

				// 이름이랑 생년월일이 모두 같을 경우
				if (userName.equals(realName) && userBirth.equals(realBirth)) {
					obj.put("realName", realName);
					obj.put("realID", realID);
					obj.put("status", "ok");
				} else {
					// 둘 중 하나가 다를 경우
					obj.put("status", "onemore");
				}

			} else {
				obj.put("status", "overtwo");
			}
		}  else {
			// 해당 정보가 없을 경우
			obj.put("status", "not-ok");
		}
		out.println(obj.toJSONString());
		out.close();
		return null;
	}
}