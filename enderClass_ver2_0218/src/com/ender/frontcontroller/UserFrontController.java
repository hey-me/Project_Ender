package com.ender.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.controller.Controller;


@WebServlet("*.do")
public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// /MVC04/memberList.do
		String uri = request.getRequestURI();

		// /MVC04
		String path = request.getContextPath();

		// /memberList.do
		String command = uri.substring(path.length());

		System.out.println(command);

		// 모든 부분에서 사용할 변수 선언
		Controller controller = null;
		String nextPage = null;

		// 핸들러 맵핑
		HandlerMapping map = new HandlerMapping();
		controller = map.getController(command);
		nextPage = controller.requestHandler(request, response);

		if (nextPage != null) {
			// indexOf 값이 없다면 -1이 나옴
			if (nextPage.indexOf("redirect:") != -1) {
				response.sendRedirect(path + nextPage.split(":")[1]);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.view(nextPage));
				rd.forward(request, response);
			}
		}

	}

}
