package com.ender.controller;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.ender.model.ClassDAO;
import com.ender.model.ClassVO;

public class UserClassController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ClassDAO dao = new ClassDAO();
				
		List<ClassVO> list = dao.classList();
		
		request.setAttribute("userClassList", list);

		return "userClassList";
	}

}