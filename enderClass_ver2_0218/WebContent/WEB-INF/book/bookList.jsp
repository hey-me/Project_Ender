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
<link rel="stylesheet" href="${path}/css/ender.css">

<meta charset="UTF-8">
<title>Ender Online Class</title>
<script type="text/javascript">
	function delFunction(num){
		location.href="${path}/bookDelete.do?b_num="+num;
		
	}
	function insertFunction(num, name){
		location.href="${path}/classRegister.do?num="+num+"&&name="+name;
		
		
	}
	function asd(name){
		location.href="${path}/classRegister.do?name="+name;
	}
</script>
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

		<c:forEach var="vo" items="${booklist}">
			<tr>
				<td>${vo.b_image}</td>
				<td>${vo.b_name}</td>
				<td>${vo.b_pub}</td>
				<td>${vo.b_price}</td>
				<td><input type="button" value="선택" class="btn btn-light"
					onclick="insertFunction(${vo.b_num} ,'${vo.b_name}')" /></td>
				<td><input type="button" value="삭제" class="btn btn-danger"
					onclick="delFunction(${vo.b_num})" /></td>
			</tr>
		</c:forEach>

		<tr>
			<td colspan='8' align='center'><input type="button" value="교재등록"
				class="btn btn-success"
				onclick="location.href='${path}/bookRegister.do'" /> <input
				type="button" value="홈으로 가기" class="btn btn-success"
				onclick="location.href='${path}/ender.jsp'" /></td>
		</tr>
	</table>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>