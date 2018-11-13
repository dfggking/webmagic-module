<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
  <%@include file="../common/head.jsp"%>
  <link href="/css/detail/style.css?v=<%=new Date().getTime() %>" rel="stylesheet">
</head>
<body>
  <header class="top-header">
    <div class="h-center container">
      <div class="h-logo">
        <img class="logo" src="/images/logo.png">
      </div>
      <div class="h-nav">
        <ul id="J_header_nav" class="clearfix">
          <li><a href="/home/index">网站首页</a></li>
          <li><a href="/team/member/list">团队成员</a></li>
          <li><a href="/research/direction">研究方向</a></li>
          <li><a href="/thesis/index">论文著作</a></li>
          <li><a href="/project/page">科研项目</a></li>
          <li class="active"><a href="/news/info">新闻资讯</a></li>
          <li><a href="/courseteach/page">课程教学</a></li>
          <li><a href="/dataCode/info">数据与代码</a></li>
          <li><a href="/admission/info">招生信息</a></li>
        </ul>
      </div>
    </div>
  </header>
  <div class="nav-panel nav-news">
    <div class="nav-center">
      <div class="nav-title clearfix"><span class="label">一一</span><span>新闻详情</span></div>
      <h2 class="nav-h2">News</h2>
      <span class="nav-span">
        <a href="">网站首页</a>
        <a class="dot"> > </a>
        <a href="">新闻详情</a>
      </span>
    </div>
  </div>
  <div class="container detail-container top-margin">
    <h1 class="h1-title">北京交通大学计算机与信息学院2017级博士研究生申请考核制实施细则</h1>
    <div>
    
    </div>
  </div>
  <jsp:include page="../common/footer.jsp" />
  <script>
    $(function(){
      $('img').on('mousedown',function (e) {
          e.preventDefault();
      });
    });
  </script>
</body>
</html>