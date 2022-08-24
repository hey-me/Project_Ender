<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>     
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
<link rel="stylesheet" href="${path}/css/bookRegister.css">

</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->
<h2 align="center">교재 등록</h2>
<form action="${path}/bookInsert.do" method="post">
	<table class="table table-hover" style="width:400px" align="center">
		<tr>
			<td>이름</td>
			<td align="center"><input type="text" name="b_name" /></td>
		</tr>
		<tr>
			<td>출판사</td>
			<td align="center"><input type="text" name="b_pub" /></td>
		</tr>
		<tr>
			<td>정보</td>
			<td align="center"><input type="text" name="b_info" /></td>
		</tr>
		<tr>
			<td>금액</td>
			<td align="center"><input type="text" name="b_price" /></td>
		</tr>
		<tr>
			<td>이미지</td>
			<td align="center"><input type="file" accept="image/jpg" name="b_image" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록" class="btn btn-success"/>
				<input type="button" value="취소" class="btn btn-danger" onclick="location.href='${path}/bookList.do'"/>
			</td>
		</tr>
	</table>
	
		<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</form>
</body>
</html>