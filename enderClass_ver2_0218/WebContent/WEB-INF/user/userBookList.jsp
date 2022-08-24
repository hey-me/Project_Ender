<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="css/ender.css">
<link rel="stylesheet" href="css/user.css">
<link
	href='https:/cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<meta charset="UTF-8">
<title>Ender Online Class</title>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->
	<table class='table table-hover'>
		<tr>
			<th>이미지</th>
			<th>교재</th>
			<th>출판사</th>
			<th>가격</th>
		</tr>

		<c:forEach var="vo" items="${userbooklist}">
			<tr>
				<td><img alt="" src="./image/book-10.png" width="50"
					height="50"></td>
				<td><a href='${ctp}/bookContent.do?b_num=${vo.b_num}'>${vo.b_name}</a></td>
				<td>${vo.b_pub}</td>
				<td>${vo.b_price}원</td>
			</tr>
		</c:forEach>
		</tr>
	</table>

	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>