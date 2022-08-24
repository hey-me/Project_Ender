package com.ender.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class SearchPwController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("searchPwName");
		String userID = request.getParameter("searchID");
		
		System.out.println("이름" + userName);
		System.out.println("아이디" + userID);
		
		
		UserDAO dao = new UserDAO();
		
		PrintWriter out = response.getWriter();

		JSONObject obj = new JSONObject();

		UserDTO vo = dao.userIdContent(userID);
		
		System.out.println("vo = " + vo);
		
		if (vo != null) {
			
			String realName = vo.getUserName();
			String realID = vo.getUserID();
			String realPW = vo.getUserPW();
			
			// 비밀번호 중 0~4번째 자리까지
			String firstPW = realPW.substring(0, 4);
			// 그 이후 남은 비밀번호
			String secondPW = realPW.substring(4);
			// 남은 비밀번호들은 *로 처리
			String resultPW = secondPW.replaceAll("["+secondPW+"]", "*");
			// 유저에게 보여줄 보안 비밀번호
			String securityPW = firstPW + resultPW;
			
			// 해당 정보가 존재
			if (dao.searchPW(vo)) {
				
				// 이름이랑 아이디가 모두 같을 경우
				if (userName.equals(realName) && userID.equals(realID)) {
					obj.put("realID", realID);
					obj.put("realPW", securityPW);
					obj.put("status", "ok");
				} else {
					// 둘 중 하나가 다를 경우
					obj.put("status", "onemore");
				}
			}
		} else {
			// 해당 정보가 없을 경우
			obj.put("status", "not-ok");
		}
		
		out.println(obj.toJSONString());
		out.close();
		
		return null;
	}
}
