<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 로그인 FORM  -->

<!-- NAVER API -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<div class="login-form-container" id="login-open">

	<div id="close-login-btn" class="fas fa-times"></div>

	<form action="${path}/userLogin.do" id="login-form" method="post">
		<h3>로그인</h3>
		<span>아이디</span> <input type="email" name="userID" class="box"
			placeholder="이메일을 입력해주세요." id="userID"> <span>비밀번호</span> <input
			type="password" name="userPW" class="box" placeholder="비밀번호를 입력해주세요."
			id="userPW">

		<div class="checkbox">
			<input type="checkbox" name="" id="remember-me"> <label
				for="remember-me">아이디 저장</label>
		</div>

		<span id="error"></span>
		<button class="loginBtn" id="loginSubmit">로그인</button>
		
		<!-- 네이버 로그인 버튼 노출 영역 -->
		<div id="naverIdLogin">
			<a id="naverIdLogin_loginButton" href="#" role="button"><img
				src="https://static.nid.naver.com/oauth/big_g.PNG"></a>
		</div>
		<!-- //네이버 로그인 버튼 노출 영역 -->

		<p>
			가입 정보를 잊어버리셨습니까 ? <a href="#" id="select-btn">아이디/비밀번호 찾기</a>
		</p>
		<p>
			아직 회원이 아니십니까 ? <a href="#" id="regist-btn">회원가입</a>
		</p>
		<!-- 		//Cli ID : Rod_vU6TBIlnj2ml1CYk -->
		<!-- 	//Cli Se : Cox1x7k5HV -->
	</form>

</div>
<!-- (2) LoginWithNaverId Javscript SDK -->
<script src="${path}/js/naveridlogin_js_sdk_2.0.2.js"></script>

<!-- (3) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
<script>
	window.name = 'opener';
	var naverLogin = new naver.LoginWithNaverId({
		clientId : "Rod_vU6TBIlnj2ml1CYk",
		callbackUrl : "http://" + window.location.hostname	+ ((location.port == "" || location.port == undefined) ? ""
						: ":" + location.port) + "/enderClass/ender.jsp",
		isPopup : true,
		loginButton : {
			color : "green",
			type : 3,
			height : 60
		}
	});
	/* (4) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
	naverLogin.init();

	/* (4-1) 임의의 링크를 설정해줄 필요가 있는 경우 */
	$("#gnbLogin").attr("href", naverLogin.generateAuthorizeUrl());

	/* (5) 현재 로그인 상태를 확인 */
	window.addEventListener('load', function() {
		naverLogin.getLoginStatus(function(status) {
			if (status) {
				/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
				setLoginStatus();
			} else {
				$("#gnbLogin").css("visibility", "hidden");
			}
		});
	});

	/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
	function setLoginStatus() {
		var profileImage = naverLogin.user.getProfileImage();
		var name = naverLogin.user.getName();
		var imageViewer = '';
		if (profileImage) {
			imageViewer += '<br><br><img src="' + profileImage + '" height=50 /> <p>';
		}
		$("#name_text").html(
				imageViewer + name + '님 반갑습니다.</p>');
		$("#login-btn").css("visibility", "hidden");
		$("#pr").attr("href", "${path}/userProfile.do");
		$("#gnbLogin").html("Logout");
		$("#gnbLogin").attr("href", "#");
		/* (7) 로그아웃 버튼을 설정하고 동작을 정의합니다. */
		$("#gnbLogin").click(function(e) {
			e.preventDefault();
			naverLogin.logout();
			location.replace('/enderClass/ender.jsp');
		});
	}
</script>

<script type="text/javascript">
	var fail =
<%=request.getParameter("fail")%>
	;
	$(document).ready(function() {
		if (fail != null) {
			$("#login-btn").trigger("click");
		}
	});
</script>