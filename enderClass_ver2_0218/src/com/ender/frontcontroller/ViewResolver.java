package com.ender.frontcontroller;

public class ViewResolver {

	public static String view(String nextPage) {

		if (nextPage.charAt(0) == 'c') {
			return "/WEB-INF/class/" + nextPage + ".jsp";
		} else if (nextPage.charAt(0) == 'b') {
			return "/WEB-INF/book/" + nextPage + ".jsp";
		} else if (nextPage.charAt(0) == 'u') {
			return "/WEB-INF/user/" + nextPage + ".jsp";
		} else if (nextPage.charAt(0) == 'g') {
			return "/WEB-INF/gallery/" + nextPage + ".jsp";
		} else if (nextPage.charAt(0) == 'p') {
			return "/WEB-INF/professor/" + nextPage + ".jsp";
		} else {
			return "/WEB-INF/form/" + nextPage + ".jsp";
		}
	}
}
