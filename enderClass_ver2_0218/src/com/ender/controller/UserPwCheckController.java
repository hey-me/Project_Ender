package com.ender.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ender.usermodel.UserDAO;

public class UserPwCheckController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Ajax로 보낸 아이디 받기
		String userPW = request.getParameter("userPW");
		
		System.out.println("userPW : " + userPW);
		
		// DB를 조회할 MyBatis
		UserDAO dao = new UserDAO();
		PrintWriter out = response.getWriter();
		
		JSONObject obj = new JSONObject();
		
		// put(key, value) 설정
		if (dao.userPwCheck(userPW)) {
			obj.put("status", "not-ok");
			
		} else {
			obj.put("status", "ok");
		}
		
		out.println(obj.toJSONString());
		out.close();
		return null;
	}
}
