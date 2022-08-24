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

public class UserNameListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String searchName = request.getParameter("searchName");
		String searchBirth = request.getParameter("searchBirth");

		System.out.println("검색이름 : " + searchName);
		
		UserDAO dao = new UserDAO();

		PrintWriter out = response.getWriter();

		JSONObject obj = new JSONObject();

		List<UserDTO> list = dao.userNameList(searchName);

		// 값이 존재하고
		if (list != null) {

			int cnt = 0;
			// for(A:B) => B에서 차례대로 객체를 꺼내서 A에 넣겠다
			for (UserDTO vo : list) {
				obj.put("userName", vo.getUserName());
				obj.put("userID=" + cnt, vo.getUserID());
				obj.put("userBirth=" + cnt, vo.getUserBirth());
				cnt++;
			}
			String name = (String) obj.get("userName");
			String id1 = (String) obj.get("userID=0");
			String id2 = (String) obj.get("userID=1");
			String birth1 = (String) obj.get("userBirth=0");
			String birth2 = (String) obj.get("userBirth=1");
			System.out.println("기입 생일 : " + searchBirth);
			System.out.println("생일1 : " + birth1);
			System.out.println("생일2 : " + birth2);
			if (searchName.equals(name) && (searchBirth.equals(birth1)) || (searchBirth.equals(birth2))) {
				obj.put("userName", name);
				obj.put("userID0", id1);
				obj.put("status", "all-ok");
			} else {
				// 하나만 입력이 되었을 때
				obj.put("userName", name);
				obj.put("userID0", id1);
				obj.put("userID1", id2);
				obj.put("status", "re");
			}
		} else {
			// 애초에 list가 없을 때
			obj.put("status", "no");
		}
		out.println(obj.toJSONString());
		out.close();
		return null;
	}
}