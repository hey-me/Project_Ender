<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ender Online Class</title>

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<!-- 굳이 필요없는 favicon.ico 404 에러 페이지  -->
<link rel="shortcut icon" href="data:image/x-icon;," type="imag3e/x-icon">

</head>
<body>

	<!-- header section starts  -->

	<!-- 정적 -> 파라미터 값을 받을 수 없음 -->
	<%-- <%@ include file="/WEB-INF/header.jsp"%> --%>
	<!-- 동적 -> 파라미터 값 받을 수 있음 -->
	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="row">

			<div class="content">
				<h3>인기 강좌</h3>
				<p>현재 수강생들의 Best Pick!!!</p>
				<a href="${path}/watchVideo.do" class="btn">미리보기</a>
			</div>

			<div class="swiper books-slider">
				<div class="swiper-wrapper">
					<a href="#" class="swiper-slide"><img src="image/JSP-book.png"
						alt=""></a> <a href="#" class="swiper-slide"><img
						src="image/JS-book.png" alt=""></a> <a href="#"
						class="swiper-slide"><img src="image/JAVA-book.png" alt=""></a>
					<a href="#" class="swiper-slide"><img src="image/DB-book.png"
						alt=""></a> <a href="#" class="swiper-slide"><img
						src="image/PYTHON-book.png" alt=""></a> <a href="#"
						class="swiper-slide"><img src="image/HTML-book.png" alt=""></a>
				</div>
				<img src="image/stand.png" class="stand" alt="">
			</div>

		</div>

	</section>

	<!-- home section ense  -->

	<!-- icons section starts  -->

	<section class="icons-container">

		<div class="icons">
			<i class="fas fa-shipping-fast"></i>
			<div class="content">
				<h3>배송비 무료</h3>
				<p>order over $100</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-lock"></i>
			<div class="content">
				<h3>정보 보안</h3>
				<p>100 secure payment</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-redo-alt"></i>
			<div class="content">
				<h3>쉬운 환불</h3>
				<p>10 days returns</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-headset"></i>
			<div class="content">
				<h3>24시간 상담</h3>
				<p>call us anytime</p>
			</div>
		</div>

	</section>

	<!-- icons section ends -->

	<!-- featured section starts  -->

	<section class="featured" id="featured">

		<h1 class="heading">
			<span>인기 교수</span>
		</h1>

		<div class="swiper featured-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_1.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. LEE</h3>
						<div class="price">
							'자바가 제일 쉬웠어요'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_2.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. KIM</h3>
						<div class="price">
							'JS의 기초를 알려줄게!'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_3.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. JEON</h3>
						<div class="price">
							'Python 초보를 고수로'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_4.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. JEONG</h3>
						<div class="price">
							'코딩이 어려우신가요?'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_5.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. PARK</h3>
						<div class="price">
							'코딩의 기초 중에 기초!'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_6.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. RYU</h3>
						<div class="price">
							'실무 중심 교육'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_7.png" alt="">
					</div>
					<div class="content">
						<h3>Mr. SEO</h3>
						<div class="price">
							'코드의 예술'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_8.png" alt="">
					</div>
					<div class="content">
						<h3>Ms. LEE</h3>
						<div class="price">
							'부자가 되고싶다면 클릭!'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_9.png" alt="">
					</div>
					<div class="content">
						<h3>Ms. HAN</h3>
						<div class="price">
							'왜? 코딩이 열풍인가?'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/professor_10.png" alt="">
					</div>
					<div class="content">
						<h3>Ms. KIM</h3>
						<div class="price">
							'눈으로 읽히는 코드'
						</div>
						<a href="#" class="btn">상세 보기</a>
					</div>
				</div>

			</div>

			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>

		</div>

	</section>

	<!-- featured section ends -->

	<!-- newsletter section starts -->

	<section class="newsletter">

		<form action="">
			<h3>구독하고 빠른 정보 받기</h3>
			<input type="email" name="" placeholder="이메일을 입력해주세요." id=""
				class="box"> <input type="submit" value="구독" class="btn">
		</form>

	</section>

	<!-- newsletter section ends -->

	<!-- arrivals section starts  -->

	<section class="arrivals" id="arrivals">

		<h1 class="heading">
			<span>인기 과목</span>
		</h1>

		<div class="swiper arrivals-slider">

			<div class="swiper-wrapper">

				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-1.png" alt="">
					</div>
					<div class="content">
						<h3>React</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-2.png" alt="">
					</div>
					<div class="content">
						<h3>Python</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-3.png" alt="">
					</div>
					<div class="content">
						<h3>HTML</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-4.png" alt="">
					</div>
					<div class="content">
						<h3>CSS</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-5.png" alt="">
					</div>
					<div class="content">
						<h3>JavaScript</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>

			</div>

		</div>

		<div class="swiper arrivals-slider">

			<div class="swiper-wrapper">

				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-6.png" alt="">
					</div>
					<div class="content">
						<h3>Node.js</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-7.png" alt="">
					</div>
					<div class="content">
						<h3>Vue.js</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-8.png" alt="">
					</div>
					<div class="content">
						<h3>Next.js</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-9.png" alt="">
					</div>
					<div class="content">
						<h3>Nest.js</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-10.png" alt="">
					</div>
					<div class="content">
						<h3>Django</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>

			</div>

		</div>

	</section>

	<!-- arrivals section ends -->

	<!-- deal section starts  -->

	<section class="deal">

		<div class="content">
			<h3>오늘의 할인 과목</h3>
			<h1>50% 할인</h1>
			<p>누구나 쉽게 배울 수 있는 Python 강의!</p>
			<a href="#" class="btn">수강하기</a>
		</div>

		<div class="image">
			<img src="image/deal-img.jpg" alt="">
		</div>

	</section>

	<!-- deal section ends -->

	<!-- reviews section starts  -->

	<section class="reviews" id="reviews">

		<h1 class="heading">
			<span>수강 후기</span>
		</h1>

		<div class="swiper reviews-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<img src="image/pic-1.png" alt="">
					<h3>전 창민</h3>
					<p>어려운 점도 많았지만 찾아보고 해결할 수 있는 능력이 향상되는 시간이어서 좋았습니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-2.png" alt="">
					<h3>서 완석</h3>
					<p>게시판을 구상하면서 저번에 한 번 접해본 내용이었지만 직접 원하는대로 구성하려니 어려웠지만 결국 해내서 뿌듯했습니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-3.png" alt="">
					<h3>이 혜미</h3>
					<p>많은 시간을 할애하면서 아쉬운 점도 많았지만 완성본을 보니 뿌듯함이 더 컸고 다음에는 저만의 포트폴리오 웹을 만들어보고 싶다는 생각이 들었습니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>
				<div class="swiper-slide box">
					<img src="image/pic-4.jpg" alt="">
					<h3>정 영진</h3>
					<p>Ajax를 직접 찾아보면서 적용시켜보니 시간이 많이 걸렸지만 오류가 하나 둘 씩 사라지면서 작동이 되었을 때는 큰 뿌듯함을 느꼈습니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-5.jpg" alt="">
					<h3>한 광진</h3>
					<p>서로의 막힌 코드를 같이 분석하면서 해결해나가니 실력이 향상되는 것 같았습니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-6.png" alt="">
					<h3>이 재승</h3>
					<p>똑같은 웹페이지이더라도 구성되는 프로그래밍 언어는 다양하다는 것을 느꼈습니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

			</div>

		</div>

	</section>

	<!-- reviews section ends -->

	<!-- blogs section starts  -->

	<section class="blogs" id="blogs">

		<h1 class="heading">
			<span>활동</span>
		</h1>

		<div class="swiper blogs-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-1.jpg" alt="">
					</div>
					<div class="content">
						<h3>교재 나눔 이벤트</h3>
						<p>다양한 중고 교재들을 나눠드려요!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-2.jpg" alt="">
					</div>
					<div class="content">
						<h3>수강 열정 이벤트</h3>
						<p>이 수업만큼은 본인이 최고!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-3.jpg" alt="">
					</div>
					<div class="content">
						<h3>정보 나눔 이벤트</h3>
						<p>다양하고 유용한 정보들을 나눠드려요!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-4.jpg" alt="">
					</div>
					<div class="content">
						<h3>수강 일지 이벤트</h3>
						<p>본인 만의 공부 비법 대 방출!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-5.jpg" alt="">
					</div>
					<div class="content">
						<h3>수강생들 응원 이벤트</h3>
						<p>여러분들의 앞날을 응원하는 선배들의 메시지!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

			</div>

		</div>

	</section>

	<!-- blogs section ends -->

	<!-- footer section starts  -->

	<!-- 정적 -> 파라미터 값을 받을 수 없음 -->
	<%-- <%@ include file="/WEB-INF/footer.jsp"%> --%>
	<!-- 동적 -> 파라미터 값 받을 수 있음 -->
	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

	<!-- loader  -->

	<div class="loader-container">
		<img src="image/loading-img.gif">
	</div>

	<!-- Ajax -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

	<!-- custom js file link  -->
	<script src="${path}/js/ender.js"></script>

</body>
</html>