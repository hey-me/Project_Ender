package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {

	// Servlet, IO 예외처리는 기본적으로
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
}
