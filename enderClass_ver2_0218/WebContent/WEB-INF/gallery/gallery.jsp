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
    <title>사진관</title>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${path}/css/gallery.css" />
  </head>
  <body>
    <div id="side-menu" class="fas fa-bars"></div>

    <div class="side-bar">
      <h1 class="heading">ender</h1>
      <div class="box">
        <h3 class="title">찾을 이미지 :</h3>
        <input type="text" placeholder="search image..." id="search-box" />
      </div>
      <div class="box">
        <h3 class="title">목록 :</h3>
        <div class="category">
          <div class="btn active" data-category="all">all</div>
          <div class="btn" data-category="animal">animals</div>
          <div class="btn" data-category="food">food</div>
          <div class="btn" data-category="fish">fish</div>
          <div class="btn" data-category="flower">flower</div>
        </div>
      </div>
      <div class="box">
        <h3 class="title">확장자 :</h3>
        <div class="type">
          <div class="btn active" data-type="all">all type</div>
          <div class="btn" data-type="jpg">jpg</div>
          <div class="btn" data-type="png">png</div>
          <div class="btn" data-type="svg">svg</div>
        </div>
      </div>
      <div class="reset-btn"><div class="btn">초기화</div></div>
      <div class="back-btn"><div class="btn" onclick="location.href='${path}/ender.jsp'">뒤로 가기</div></div>
    </div>

    <div class="gallery">
      <h1 class="heading">image gallery</h1>

      <div class="image-container">
        <img
          src="${path}/images/img-1.jpg"
          data-cat="animal"
          data-search="animal bird cute chicks"
          alt=""
        />
        <img
          src="${path}/images/img-2.svg"
          data-cat="food"
          data-search="vector cookies christmas"
          alt=""
        />
        <img
          src="${path}/images/img-3.png"
          data-cat="food"
          data-search="food corn cartoon png"
          alt=""
        />
        <img
          src="${path}/images/img-4.jpg"
          data-cat="fish"
          data-search="animal fish dolphin"
          alt=""
        />
        <img
          src="${path}/images/img-5.jpg"
          data-cat="animal"
          data-search="animal squirrel cute"
          alt=""
        />
        <img
          src="${path}/images/img-6.png"
          data-cat="animal"
          data-search="animal panda png cartoon"
          alt=""
        />
        <img
          src="${path}/images/img-7.svg"
          data-cat="animal"
          data-search="animal penguine bird cartoon"
          alt=""
        />
        <img
          src="${path}/images/img-8.jpg"
          data-cat="animal"
          data-search="animal bird cute"
          alt=""
        />
        <img
          src="${path}/images/img-9.png"
          data-cat="animal"
          data-search="animal cat mouse cute png"
          alt=""
        />
        <img
          src="${path}/images/img-10.svg"
          data-cat="fish"
          data-search="animal fish shark vector"
          alt=""
        />
        <img
          src="${path}/images/img-11.jpg"
          data-cat="food"
          data-search="food orange"
          alt=""
        />
        <img
          src="${path}/images/img-12.svg"
          data-cat="food"
          data-search="food vector juice drink"
          alt=""
        />
        <img
          src="${path}/images/img-13.png"
          data-cat="food"
          data-search="food chicken cartoon png"
          alt=""
        />
        <img
          src="${path}/images/img-14.jpg"
          data-cat="food"
          data-search="food coffee bread breakfast"
          alt=""
        />
        <img
          src="${path}/images/img-15.png"
          data-cat="food"
          data-search="food burger png cartoon"
          alt=""
        />
        <img
          src="${path}/images/img-16.svg"
          data-cat="food"
          data-search="food popcorn vector"
          alt=""
        />
        <img
          src="${path}/images/img-17.jpg"
          data-cat="food"
          data-search="food pancake breakfast"
          alt=""
        />
        <img
          src="${path}/images/img-18.svg"
          data-cat="flower"
          data-search="flower plants nature vector"
          alt=""
        />
        <img
          src="${path}/images/img-19.png"
          data-cat="flower"
          data-search="flower plants nature cartoon"
          alt=""
        />
        <img
          src="${path}/images/img-20.jpg"
          data-cat="flower"
          data-search="flower plants nature"
          alt=""
        />
      </div>
    </div>

    <div class="image-popup">
      <img src="" alt="" />
    </div>

    <script src="${path}/js/gallery.js"></script>
  </body>
</html>
