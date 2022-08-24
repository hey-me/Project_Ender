<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 비밀번호 찾기 FORM -->

<div class="searchPW-form-container" id="search-open">

	<div id="close-searchPW-btn" class="fas fa-times"></div>

	<form id="searchPW-form" method="post">
		<h3>비밀번호 찾기</h3>
		<span>이름</span> 
		<input type="text" name="searchPwName" class="box" placeholder="이름을 입력해주세요." id="searchPwName">
		<span>아이디</span> 
		<input type="email" name="searchID" class="box" placeholder="아이디를 입력해주세요."
			id="searchID">
		<div>
			<h3 id="searchID_text"></h3>
		</div>
		<div>
			<h3 id="resultPW_text"></h3>
		</div>
		<button type="button"id="searchPW-Btn">찾기</button>
		<button type="button" id="backPW-btn">뒤로가기</button>
	</form>

</div>

<script type="text/javascript">

	$('#searchPW-Btn').click(function () {
	
	var queryString = $("form[id=searchPW-form]").serialize();
	
	$.ajax({
		url: "./searchPW.do",
		type: 'GET',
		data : queryString,
		dataType : "json",
			success : function (result) {
				if (result.status == "ok") {
					$("#searchID_text").text(result.realID + "의");
					$("#resultPW_text").text("비밀번호 : " + result.realPW);
					
				} else if (result.status == "onemore"){
					$("#searchID_text").text("");
					$("#resultPW_text").text("정보가 일치하지 않습니다");
				} else {
					$("#searchID_text").text("회원이름으로 가입된 아이디가 없습니다");
					$("#resultPW_text").text("");
				}
			},
			error : function () {
				console.log("오류");
			}
		});
	});

</script>