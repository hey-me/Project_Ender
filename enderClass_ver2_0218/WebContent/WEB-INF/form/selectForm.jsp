<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 아이디/비번 찾기 선택 FORM -->

<div class="select-form-container" id="select-open">

	<div id="close-select-btn" class="fas fa-times"></div>

	<form id="select-form">
		<h3>찾을 항목 선택</h3>
		<div class="select-container">
			<a href="#" id="searchID">아이디</a>
			<a href="#" id="searchPW">비밀번호</a>
		</div>
	</form>

</div>