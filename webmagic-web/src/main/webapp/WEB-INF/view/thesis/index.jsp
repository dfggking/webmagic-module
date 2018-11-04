<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
  <%@include file="../common/head.jsp"%>
  <link href="/css/thesis/style.css?v=<%=new Date().getTime() %>" rel="stylesheet">
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
          <li class="active"><a href="/thesis/index">论文著作</a></li>
          <li><a href="/project/info">科研项目</a></li>
          <li><a href="/news/info">新闻资讯</a></li>
          <li><a href="/course/teaching">课程教学</a></li>
          <li><a href="/dataCode/info">数据与代码</a></li>
          <li><a href="/admission/info">招生信息</a></li>
        </ul>
      </div>
    </div>
  </header>
  <div class="nav-panel nav-thesis">
    <div class="nav-center">
      <div class="nav-title clearfix"><span class="label">一一</span><span>论文著作</span></div>
      <h2 class="nav-h2">Thesis</h2>
      <span class="nav-span">
        <a href="">网站首页</a>
        <a class="dot"> > </a>
        <a href="">论文著作</a>
      </span>
    </div>
  </div>
  <div class="container thesis-container top-margin">
    <div class="condition">
      <div class="c-row">
        <span class="name">年份：</span>
        <ul id="J_condition_year" class="clearfix">
          <li class="active">2018</li>
          <li>2017</li>
          <li>2016</li>
          <li>2015</li>
          <li>2014</li>
          <li>2013</li>
          <li>2012</li>
          <li>2011</li>
          <li>2010</li>
          <li>2009</li>
          <li>2008</li>
          <li>2007</li>
          <li>2006</li>
          <li>2005</li>
          <li>2004</li>
          <li>2003</li>
          <li>2002</li>
          <li>2001</li>
          <li>2000</li>
        </ul>
      </div>
      <div class="c-row">
        <span class="name">类型：</span>
        <ul id="J_condition_type" class="clearfix">
          <li class="active">会议</li>
          <li>期刊</li>
        </ul>
      </div>
    </div>
    <div class="thesis-list">
      <ul>
        <li>
          大数据环境下的网络安全领域文献研究进展分析
          <span class="oper">[<a href="">源码</a>]</span><span class="oper">[<a href="">pdf</a>]</span><span class="oper">[<a href="">下载</a>]</span>
        </li>
      </ul>
      <ul>
        <li>Windows下基于SpamAssassin的垃圾邮件过滤系统的研究与实现 优先出版
          <span class="oper">[<a href="">源码</a>]</span><span class="oper">[<a href="">pdf</a>]</span><span class="oper">[<a href="">下载</a>]</span>
        </li>
      </ul>
      <ul>
        <li>
          S.-Y. Zhao, G.-D. Zhang, M.-W. Li, W.-J. Li. Proximal SCOPE for Distributed Sparse Learning. In: Proceedings of the Annual Conference on Neural Information Processing Systems (NIPS), 2018.
          <span class="oper">[<a href="">源码</a>]</span><span class="oper">[<a href="">pdf</a>]</span><span class="oper">[<a href="">下载</a>]</span>
        </li>
      </ul>
      <ul>
        <li>
          Y. Yang, Y.-F. Wu, D.-C. Zhan, Z.-B. Liu, Y. Jiang. Complex Object Classification: A Multi-Modal Multi-Instance Multi-Label Deep Network with Optimal Transport. In: Proceedings of the Annual Conference on ACM SIGKDD (KDD'18), London, UK, 2018.
          <span class="oper">[<a href="">源码</a>]</span><span class="oper">[<a href="">pdf</a>]</span><span class="oper">[<a href="">下载</a>]</span>
        </li>
      </ul>
      <ul>
        <li>
          S.-Y. Chen, Y. Yu, Q. Da, J. Tan, H.-K. Huang and H.-H. Tang. <u>Stablizing reinforcement learning in dynamic environment with application to online recommendation</u>. <b>In: Proceedings of the 24th ACM SIGKDD Conference on Knowledge Discovery and Data Mining (KDD'18)</b> (Research Track), London, UK, 2018.
          <span class="oper">[<a href="">源码</a>]</span><span class="oper">[<a href="">pdf</a>]</span><span class="oper">[<a href="">下载</a>]</span>
        </li>
      </ul>
      <ul>
        <li>
          H.-J. Ye, D.-C. Zhan, Y. Jiang, Z.-H. Zhou. <u>Rectify Heterogeneous Model with Semantic Mapping</u>. <b>In: Proceedings of the 35th International Conference on Machine Learning (ICML'18)</b>, Stockholm, Sweden, 2018.
          <span class="oper">[<a href="">源码</a>]</span><span class="oper">[<a href="">pdf</a>]</span><span class="oper">[<a href="">下载</a>]</span>
        </li>
      </ul>
    </div>
  </div>
  <jsp:include page="../common/footer.jsp" />
  <script>
    $(function(){
      var $typeLi = $('#J_condition_type li');
      $typeLi.click(function(){
        $typeLi.removeClass('active');
        $(this).addClass('active');
      });
      var $yearLi = $('#J_condition_year li');
      $yearLi.click(function(){
        $yearLi.removeClass('active');
        $(this).addClass('active');
      });
    });
  </script>
</body>
</html>