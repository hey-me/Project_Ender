<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" href="${path}/css/footer.css">

<section class="footer">

	<div class="box-container">

		<div class="box">
			<h3>지점</h3>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> korea
			</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> USA
			</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> russia
			</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> france
			</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> japan
			</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> africa
			</a>
		</div>

		<div class="box">
			<h3>빠른 이동</h3>
			<a href="${path}/ender.jsp"> <i class="fas fa-arrow-right"></i> home
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> featured
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> arrivals
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> reviews
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> blogs
			</a>
		</div>

		<div class="box">
			<h3>추가 정보</h3>
			<a href="#"> <i class="fas fa-arrow-right"></i> account info
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> ordered items
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> privacy policy
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> payment method
			</a> <a href="#"> <i class="fas fa-arrow-right"></i> our serivces
			</a>
		</div>

		<div class="box">
			<h3>연락처</h3>
			<a href="#"> <i class="fas fa-phone"></i> 062-1111-2222
			</a> <a href="#"> <i class="fas fa-phone"></i> 062-1111-2223
			</a> <a href="#"> <i class="fas fa-envelope"></i> koreavzz@naver.com
			</a> <img src="${path}/image/worldmap.png" class="map" alt="">
		</div>

	</div>

	<div class="share">
		<a href="#" class="fab fa-facebook-f"></a> <a href="#"
			class="fab fa-twitter"></a> <a href="#" class="fab fa-instagram"></a>
		<a href="#" class="fab fa-linkedin"></a> <a href="#"
			class="fab fa-pinterest"></a>
	</div>

	<div class="credit">
		created by <span>Group 2</span> | all rights reserved!
	</div>

</section>