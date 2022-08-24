<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	String num = request.getParameter("num");
String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ender Online Class</title>

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->
	<h2 align="center">강좌 등록 화면</h2>
	<form action="${path}/classInsert.do" method="post">
		<table class="table table-hover" style="width: 400px" align="center">
			<tr>
				<td>강좌</td>
				<td align="center"><input type="text" name="c_name" /></td>
			</tr>
			<tr>
				<td>강사</td>
				<td align="center"><input type="text" name="c_tr" /></td>
			</tr>
			<tr>
				<td>금액</td>
				<td align="center"><input type="text" name="c_price" /></td>
			</tr>
			<tr>
				<td>강좌 수</td>
				<td align="center"><input type="text" name="c_content" /></td>
			</tr>
			<tr>
				<td>정보</td>
				<td align="center"><input type="text" name="c_info" /></td>
			</tr>

			<tr>
				<td><input type="button" value="교재 선택"
					onclick="location.href='${path}/bookList.do'"></td>

				<td><input type="text" value="<%=name%>" name="b_name"
					disabled> <input type="hidden" value="<%=num%>"
					name="b_num"></td>

			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="등록"
					class="btn btn-success" /> <input type="button" value="취소"
					onclick="location.href='${path}/classList.do'"
					class="btn btn-danger" /></td>
			</tr>
		</table>
	</form>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>