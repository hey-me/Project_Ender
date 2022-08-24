<%@page import="com.ender.model.ClassVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ender.model.ClassDAO"%>
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
		location.href="${path}/classDelete.do?c_num="+num;	
	}
	function addFunction(c_num,b_num){
		location.href="${path}/userCartInsert.do?c_num="+c_num+"&&b_num="+b_num;	
	}
</script>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->


	<table class='table table-hover'>
		<tr>
			<th>강좌</th>
			<th>강사</th>
			<th>교재 링크</th>
			<th>강좌 금액</th>
			<th>강좌 수</th>
			<th>주문</th>
		</tr>
		<%-- c_ 붙이는게 맞는데  --%>
		<c:forEach var="vo" items="${userclasslist}">
			<tr>
				<td><a href='${path}/classContent.do?c_num=${vo.num}'>${vo.name}</a></td>
				<td>${vo.tr}</td>
				<td>${vo.price}</td>
				<td><a href='${path}/bookContent.do?c_num=${vo.num}'>${vo.name}</a></td>
				<td>${vo.content}</td>
				<td><input type="button" value="주문" class="btn btn-danger"
					onclick="addFunction(${vo.num},${vo.b_num})" /></td>
			</tr>
		</c:forEach>


	</table>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>