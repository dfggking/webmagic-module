<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="../common/head.jsp"%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">
    <link href="/css/index.css?v=<%=new Date().getTime() %>" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.0/js/swiper.min.js"></script>
  </head>
  <body>
    <header class="top-header">
      <div class="h-center container">
        <div class="h-logo">
          <img class="logo" src="/images/logo.png">
        </div>
        <div class="h-nav">
          <ul id="J_header_nav" class="clearfix">
            <li class="active"><a href="/home/index">网站首页</a></li>
            <li><a href="/team/member/list">团队成员</a></li>
            <li><a href="/research/direction">研究方向</a></li>
            <li><a href="/thesis/index">论文著作</a></li>
            <li><a href="/project/info">科研项目</a></li>
            <li><a href="/news/info">新闻资讯</a></li>
            <li><a href="/course/teaching">课程教学</a></li>
            <li><a href="/dataCode/info">数据与代码</a></li>
            <li><a href="/admission/info">招生信息</a></li>
          </ul>
        </div>
      </div>
    </header>
    <div id="J_index_swiper" class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img class="swiper-img" src="/images/swiper.jpg">
        </div>
        <div class="swiper-slide">
          <img class="swiper-img" src="/images/swiper.jpg">
        </div>
        <div class="swiper-slide">
          <img class="swiper-img" src="/images/swiper.jpg">
        </div>
      </div>
      <div class="swiper-pagination"></div>
    </div>
    <section class="container top-margin">
      <header class="container-header clearfix">
        <h4 class="title">研究所介绍</h4>
        <span class="sub-title">Institute Introduction</span>
      </header>
      <div class="container-content clearfix">
        <div class="c-img">
          <img src="/images/introduction.jpg">
        </div>
        <div class="introduction">
          ${institute.introduction}
        </div>
      </div>
    </section>
    <section class="container top-margin">
      <header class="container-header clearfix">
        <h4 class="title">研究所资讯</h4>
        <span class="sub-title">Institute Information</span>
      </header>
      <div class="container-content clearfix">
        <div class="c-img">
          <div id="J_info_swiper" class="swiper-container">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <img class="swiper-img" src="/images/information.jpg">
                <p class="swiper-title">北京交通大学 2016年11月研究生发表高水平论文奖励通知</p>
              </div>
              <div class="swiper-slide">
                <img class="swiper-img" src="/images/information.jpg">
                <p class="swiper-title">关于拟对薛冰等234名在职专业学位研究生进行退学处理的通知</p>
              </div>
              <div class="swiper-slide">
                <img class="swiper-img" src="/images/information.jpg">
                <p class="swiper-title">关于2018-2019学年第一学期研究生学籍注册的通知 （全日制/非全日制/博...</p>
              </div>
            </div>
            <div class="swiper-button-prev"></div><!--左箭头-->
            <div class="swiper-button-next"></div><!--右箭头-->
          </div>
        </div>
        <div class="notice">
          <ul class="info-list">
            <c:forEach items="${info_list}" var="info" varStatus="s">
            <li class="active">
              <a href="">
                <span class="label color1">${info.type}</span>
                <span class="title">${info.title}</span>
                <span class="time">[<fmt:formatDate value="${info.createAt}" type="date" pattern="yyyy-MM-dd"/>]</span>
              </a>
            </li>
            </c:forEach>
          </ul>
        </div>
      </div>
    </section>
    <jsp:include page="../common/footer.jsp" />
    <script>
      $(function(){

        var iSwiper = new Swiper('#J_index_swiper', {
          autoplay: true,//可选选项，自动滑动
          pagination: {
              el: '#J_index_swiper .swiper-pagination',
          },
          loop: true
        });

        var infoSwiper = new Swiper('#J_info_swiper', {
            loop: true,
            navigation: {
              nextEl: '#J_info_swiper .swiper-button-next',
              prevEl: '#J_info_swiper .swiper-button-prev',
            },
            simulateTouch: false
        });

        $('img').on('mousedown',function (e) {
            e.preventDefault();
        });
      });
    </script>
  </body>
</html>