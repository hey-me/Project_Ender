<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>ENDER</title>

<link rel="stylesheet" href="${path}/css/professor.css" />
</head>
<body>

	<!-- Container -->
	<div class="container" data-0="transform:translateX(0%);"
		data-1000="transform:translateX(-200%);">

		<!-- Section One -->
		<section>
			<div class="content">
				<a href="${path}/ender.jsp"><h2>One</h2></a>
				<div class="text">
					<h1>자바 교수</h1>
					<p>그는 강하다</p>
					<a href="#" class="btn">수강하기</a>
				</div>
				
				<div class="video">
				<video autoplay="autoplay" loop="loop" muted="muted">
				<source src="${path}/video/Java_pf.mp4" type="video/mp4">
				</video>
				</div>

			</div>
		</section>

		<!-- Section Two -->
		<section>
			<div class="content">
				<h2>Two</h2>
				<div class="animation-container">
					<a href="#">
						<div class="widget-picture">
							<img class="viewable" src="">
						</div>
					</a>
				</div>
			</div>
		</section>

		<!-- Section Three -->
		<section>
			<div class="content">
				<h2>Three</h2>
				<div class="animation-container">
					<a href="#">
						<div class="widget-picture">
							<img class="viewable" src="images/cat.gif">
						</div>
					</a>
				</div>
			</div>
		</section>
	</div>
	<!-- Container End -->

</body>

<!-- Scroll JS -->
<script type="text/javascript" src="${path}/js/professor.js"></script>
<script type="text/javascript">
	var s = skrollr.init();
</script>
</html>