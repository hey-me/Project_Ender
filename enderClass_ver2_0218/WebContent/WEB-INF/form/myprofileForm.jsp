<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- add style -->
<link rel="stylesheet" href="${path}/css/profile.css" />
<title>프로필</title>
</head>

<body>
	<div class="card" data-state="#about">
		<div class="card-header">
			<img class="card-avatar" src="${path}/image/pic-1.png" />
			<h1 class="card-fullname">Soeng Souy</h1>
			<h2 class="card-jobtitle">Web Developer</h2>
		</div>
		<div class="card-main">
			<div class="card-section is-active" id="about">
				<div class="card-content">
					<div class="card-subtitle">ABOUT</div>
					<p class="card-desc">SOENG SOUY Is a free online learning
						program that introduces methods and how to coding websites from
						the limit First, to the highest level.</p>
				</div>
				<div class="card-social">
					<a href="#"> <i class="fa fa-facebook"></i>
					</a> <a href="#"> <i class="fa fa-twitter"></i>
					</a> <a href="#"> <i class="fa fa-youtube-play"></i>
					</a> <a href="#"> <i class="fa fa-linkedin-square"></i>
					</a>
				</div>
			</div>
			<div class="card-section" id="experience">
				<div class="card-content">
					<div class="card-subtitle">WORK EXPERIENCE</div>
					<div class="card-timeline">
						<div class="card-item" data-year="2016">
							<div class="card-item-title">
								Graphics Designer at <span>DDD</span>
							</div>
							<div class="card-item-desc">Video editor and graphic design
								on photoshop.</div>
						</div>
						<div class="card-item" data-year="2018">
							<div class="card-item-title">
								Intern Software at <span>DDD</span>
							</div>
							<div class="card-item-desc">Develop Data old imformation
								and in database Mysql.</div>
						</div>
						<div class="card-item" data-year="2019">
							<div class="card-item-title">
								Junior Developer at <span>COTAFER</span>
							</div>
							<div class="card-item-desc">Web Designer and Web Develop.</div>
						</div>
						<div class="card-item" data-year="2020">
							<div class="card-item-title">
								Web Developer at <span>PRINCE</span>
							</div>
							<div class="card-item-desc">Back-end Laravel Develop and
								frone-end CSS Desinger.</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card-section" id="setting">
				<form action="${path}/userUpdate.do" id="update-form" class="card-content" method="post">
					<div class="card-subtitle">수정하기</div>
					<div class="card-contact-wrapper">
						<div class="card-contact">
							<i class="fa fa-map-marker"></i>
							<input type="email" name="userID" id="userID" value="${sessionScope.userID}" placeholder="${sessionScope.userID}" readonly="readonly">
						</div>
						<div class="card-contact">
							<i class="fa fa-mobile"></i>
							<input type="text" name="userPW" id="userPW" placeholder="비밀번호">
						</div>
						<div class="card-contact">
							<i class="fa fa-envelope-o"></i>
							<input type="text" name="userPhone" id="userPhone" placeholder="연락처">
						</div>
						<button id="updateSubmit" class="contact-me">수정하기</button>
						<a href="${path}/userDelete.do">탈퇴하기</a>
					</div>
				</form>
			</div>
			<div class="card-buttons">
				<button data-section="#about" class="is-active">ABOUT</button>
				<button data-section="#experience">EXPERIENCE</button>
				<button data-section="#setting">수정</button>
				<button onclick="location.href='${path}/ender.jsp'">뒤로가기</button>
			</div>
		</div>
	</div>
	<!-- add style js -->
	<script type="text/javascript" src="${path}/js/profile.js"></script>
	
	<script type="text/javascript">
	$(function () {
		$('#updateSubmit').on('click', update);
		$('#update-form').on('submit', function () {
			return false;
		});
	})
	
	function update() {
		if (userPW.value != null) {
			if (userPhone.value != null) {
				const form = document.getElementById('update-form');
				form.submit();
			}
		}
	}
	
	
	</script>
</body>
</html>
