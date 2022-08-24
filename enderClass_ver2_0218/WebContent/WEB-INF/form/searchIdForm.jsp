<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 아이디 찾기 FORM -->

<div class="searchID-form-container" id="search-open">

	<div id="close-searchID-btn" class="fas fa-times"></div>

	<form id="searchID-form" method="post" accept-charset="utf-8">
		<h3>아이디 찾기</h3>
		<span>이름</span> <input type="text" name="searchName" class="box"
			placeholder="이름을 입력해주세요." id="searchName"> <span>생년월일</span>
		<input type="date" name="searchBirth" class="box" id="searchBirth">

		<div>
			<h3 id="searchName_text"></h3>
		</div>
		<div>
			<h3 id="resultID_text"></h3>
		</div>
		<div>
			<h3 id="resultID1_text"></h3>
		</div>

		<button type="button" id="searchID-Btn">찾기</button>
		<button type="button" id="backID-btn">뒤로가기</button>
	</form>

</div>

<script type="text/javascript">
	$('#searchID-Btn').click(function() {

		var queryString = $("form[id=searchID-form]").serialize();
		
		$.ajax({
			url : "./userNameList.do",
			type : 'GET',
			data : queryString,
			dataType : "json",
			success : function(result) {
				if (result.status == "all-ok") {
					$("#searchName_text").text(result.userName + "으로 등록된 아이디는");
					$("#resultID_text").text(result.userID0);
					$("#resultID1_text").text("");
				} else if (result.status == "re") {
					$("#searchName_text").text(result.userName + "으로 등록된 아이디는");
					$("#resultID_text").text(result.userID0);
					$("#resultID1_text").text(result.userID1);
				} else {
					$("#searchName_text").text("등록된 정보가 없습니다");
					$("#resultID_text").text("");
					$("#resultID1_text").text("");
					
				}
			},
			error : function() {
				alert('오류');
			}
		});
	});
</script>