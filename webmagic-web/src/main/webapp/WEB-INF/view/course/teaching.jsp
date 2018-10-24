<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
  <%@include file="../common/head.jsp"%>
  <link href="/css/teach/style.css?v=<%=new Date().getTime() %>" rel="stylesheet">
</head>
<body>
  <header class="top-header">
    <div class="h-center container">
      <div class="h-logo">
        <img class="logo" src="/images/logo.png">
      </div>
      <div class="h-nav">
        <ul id="J_header_nav" class="clearfix">
          <li><a href="/index">网站首页</a></li>
          <li><a href="/team/member/list">团队成员</a></li>
          <li><a href="/research/direction">研究方向</a></li>
          <li><a href="/thesis/index">论文著作</a></li>
          <li><a href="/project/info">科研项目</a></li>
          <li><a href="/news/info">新闻资讯</a></li>
          <li class="active"><a href="/course/teaching">课程教学</a></li>
          <li><a href="/dataCode/info">数据与代码</a></li>
          <li><a href="/admission/info">招生信息</a></li>
        </ul>
      </div>
    </div>
  </header>
  <div class="nav-panel nav-courseTeaching">
    <div class="nav-center">
      <div class="nav-title clearfix"><span class="label">一一</span><span>课程教学</span></div>
      <h2 class="nav-h2">Course</h2>
      <span class="nav-span">
        <a href="">网站首页</a>
        <a class="dot"> > </a>
        <a href="">课程教学</a>
      </span>
    </div>
  </div>
  <div class="container course-container top-margin">
    <div class="course-panel">
      <header>课程简介</header>
      <div class="panel-body">
        <p>本课程探讨数据仓库与大数据平台的规则、设计、实现和运维全生命周期中前沿工程方法论，通过课堂教学、平台搭建、模型设计与原型案例实现，使研究生掌握数据仓库与大数据平台基础概念，了解OLTP系统数据生成机制，掌握数据集成方法，理解数据仓库与大数据平台的规则、设计、实现和运维全生命周期中前沿工程方法论，通过课堂教学、平台搭建、模型设计与原型案例实现，使研究生掌握数据仓库与大数据平台基础概念，了解OLTP系统数据生成机制，掌握数据集成方法，理解。</p>
      </div>
    </div>
    <div class="course-panel">
      <header>考核方式</header>
      <div class="panel-body">
        <p>本课程探讨数据仓库与大数据平台的规则、设计、实现和运维全生命周期中前沿工程方法论，通过课堂教学、平台搭建、模型设计与原型案例实现，使研究生掌握数据仓库与大数据平台基础概念，了解OLTP系统数据生成机制，掌握数据集成方法，理解数据仓库与大数据平台的规则掌。</p>
      </div>
    </div>
    <div class="course-panel">
      <header>推荐预修课程</header>
      <div class="panel-body">
        <p>数据库系统与原理</p>
      </div>
    </div>
    <div class="course-panel">
      <header>参考资料与书目</header>
      <div class="panel-body">
        <p>本课程探讨数据仓库与大数据平台的规则、设计、实现和运维全生命周期中前沿工程方法论，通过课堂教学、平台搭建、模型设计与原型案例实现，使解。</p>
      </div>
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