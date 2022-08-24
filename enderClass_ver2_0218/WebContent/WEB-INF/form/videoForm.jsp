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
    <title>비디오</title>
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="${path}/css/video.css" />
  </head>
  <body>
    
    <div class="container">
    
    
      <div class="main-video-container">
        <video src="${path}/video/vid-1.mp4" loop controls class="main-video"></video>
        <h3 class="main-vid-title">house flood animation</h3>
      </div>

      <div class="video-list-container">
        <div class="list active">
          <video src="${path}/video/vid-1.mp4" class="list-video"></video>
          <h3 class="list-title">house flood animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-2.mp4" class="list-video"></video>
          <h3 class="list-title">zoombie walking animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-3.mp4" class="list-video"></video>
          <h3 class="list-title">emoji falling animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-4.mp4" class="list-video"></video>
          <h3 class="list-title">3D town animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-5.mp4" class="list-video"></video>
          <h3 class="list-title">man chasing carrot animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-6.mp4" class="list-video"></video>
          <h3 class="list-title">door hinge animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-7.mp4" class="list-video"></video>
          <h3 class="list-title">poeple walking in town animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-8.mp4" class="list-video"></video>
          <h3 class="list-title">knight chasing virus animation</h3>
        </div>

        <div class="list">
          <video src="${path}/video/vid-9.mp4" class="list-video"></video>
          <h3 class="list-title">3D helicopter animation</h3>
        </div>
      </div>
    </div>

    <!-- custom js file link  -->
    <script src="${path}/js/video.js"></script>
  </body>
</html>
