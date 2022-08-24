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
<link rel="stylesheet" href="css/ender.css">
<link rel="stylesheet" href="css/user.css">
<link
	href='https:/cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<meta charset="UTF-8">
<title>Ender Online Class</title>
<%
	int num = 0;
%>
<script type="text/javascript">
var a=0;
function each(checkbox){
	const ac=document.querySelectorAll('input[name="isCheck"]:checked');
session.setAttribute("isCheck", ac.value);
	const ic=document.querySelectorAll("input[name='isCheck']");
    	if(ac.length!=ic.length){
       	$("input[name='allCheck']").prop("checked",false);	
    	}else{
       	$("input[name='allCheck']").prop("checked",true);	
    	}
    }
	var total = 0;
	function nightlight(num) {
		var result = parseInt(document.getElementById(num).value);
		var checked = document.getElementById(num).checked;
		if (checked) {
			total += result;
		} else {
			total -= result;
			if(total<=0){
				total=0;
			}
		}
		document.getElementById("sum").value = total;
	}
</script>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<form action="userOrderInsert.do" method="post" name="frm">
		<table class='table table-hover'>
			<!-- 최종주문내역 보내는 좌표 수정 -->
			<tr>
				<th>강좌</th>
				<th>강사</th>
				<th>강좌 금액</th>
				<th></th>
				<th>교재</th>
				<th>교재 금액</th>
			</tr>
			<c:forEach var="vo" items="${userorderlist}">
				<tr>
					<td>${vo.c_name}</td>
					<td>${vo.c_tr}</td>
					<td>${vo.c_price}</td>
					<td><img alt="" src="./image/book-10.png" width="50"
						height="50"></td>
					<td>${vo.b_name}</td>
					<td>${vo.b_price}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>