<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 회원가입 FORM -->

<div class="regist-form-container">

	<div id="close-regist-btn" class="fas fa-times"></div>

	<form action="${path}/userInsert.do" name="regist" id="regist-form">
		<h3>회원가입</h3>
		<div id="code">
			<span>코드</span>
			<input type="text" name="userGrade" id="userGrade" />
		</div>
		<div class="form-control">
			<label for="userName">이름 </label> <input type="text"
				placeholder="홍길동" name="userName" id="userName" /> <span
				id="nameCheck_text"></span>
		</div>

		<div class="form-control">
			<label for="userID">아이디 </label> <input type="email"
				placeholder="abcd@efgh.com" name="userID" id="RuserID" /> <span
				id="idCheck_text"> </span>
		</div>

		<div class="form-control">
			<label for="userPW">비밀번호 </label> <input type="password"
				placeholder="abcd1234" name="userPW" id="RuserPW" /> <span
				id="pwCheck_text"></span>
		</div>

		<div class="form-control">
			<label for="userPW2">비밀번호 확인 </label> <input type="password"
				placeholder="abcd1234" name="userPW2" id="userPW2" /> <span
				id="pwCheck2_text"></span>
		</div>

		<div class="form-control">
			<label for="userBirth">생년월일 </label> <input type="date"
				name="userBirth" id="userBirth" /> <span id="birthCheck_text"></span>
		</div>

		<div class="form-control">
			<label for="userPhone">연락처(-를 제외한 숫자만 작성해주세요) </label> <input
				type="text" name="userPhone" id="userPhone" /> <span
				id="phoneCheck_text"></span>
		</div>

		<div class="form1-control">
			<label for="userAddress" class="address">주소
				<button type="button" class="btn btn-info" onclick="goPopup();">주소검색</button>
			</label> <input type="text" name="userAddress" id="userAddress"
				class="form-control" placeholder="주소를 입력해주세요." required="required"
				readonly="readonly" /> <span id="addressCheck_text"></span>
		</div>

		<!-- <input type="submit" value="회원가입" class="button"> -->
		<span id="submit_text"></span> <br>
		<button class="registBtn" id="formSubmit">회원가입</button>
	</form>
</div>