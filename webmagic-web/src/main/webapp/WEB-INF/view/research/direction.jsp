<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
  <%@include file="../common/head.jsp"%>
  <link href="/css/research/style.css?v=<%=new Date().getTime() %>" rel="stylesheet">
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
          <li class="active"><a href="/research/direction">研究方向</a></li>
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
  <div class="nav-panel nav-researchDirection">
    <div class="nav-center">
      <div class="nav-title clearfix"><span class="label">一一</span><span>研究方向</span></div>
      <h2 class="nav-h2">Research Direction</h2>
      <span class="nav-span">
        <a href="">网站首页</a>
        <a class="dot"> > </a>
        <a href="">研究方向</a>
      </span>
    </div>
  </div>
  <div class="container research-container top-margin">
    <div class="introduction">
      <p>
        <span style="font-size: 20px;margin-right: 5px;">大</span>数据与信息安全研究所主要以大数据分析处理和大数据隐私保护理论为基础，开展面向大数据的多方位研究。基于当今打造智慧城市信息社会的要求，以大规模数据信息为基础，以高效率的数据存储、传输和计算能力为支撑，利用数据挖掘和知识发现等人工智能技术手段，同时又对大数据面临的用户隐私泄露、非授权访问等安全挑战，开展大数据的应用和大数据安全关键技术的研究。研究内容涉及大数据、物联网、信息安全、数据挖掘等领域，为构建物联网环境下受强保护的大数据管理系统，打造智慧城市提供理论和技术支持。研究所汇集安徽大学、日本函馆未来大学、西安电子科技大学、江苏大学等相关研究领域的学者。目前，现有固定员工7人，其中教授1人、副教授4人、讲师2人。博士和硕士研究生近50人。研究所重视学术交流，已与国内外多所大学合作研究并联合培养研究生。
        
      </p>
    </div>
    <c:forEach items="${list}" var="rd">
      <div class="research-panel">
        <header>${rd.title}</header>
        <div class="panel-body">
          <p>${rd.content}</p>
        </div>
        <div class="panel-footer">
          <div class="more">
            <a href="">详情</a>
          </div>
        </div>
      </div>
    </c:forEach>
    <c:forEach items="${list}" var="rd">
      <div class="research-panel">
        <header>${rd.title}</header>
        <div class="panel-body">
          <p>${rd.content}</p>
        </div>
        <div class="panel-footer">
          <div class="more">
            <a href="">详情</a>
          </div>
        </div>
      </div>
    </c:forEach>
    <c:forEach items="${list}" var="rd">
      <div class="research-panel">
        <header>${rd.title}</header>
        <div class="panel-body">
          <p>${rd.content}</p>
        </div>
        <div class="panel-footer">
          <div class="more">
            <a href="">详情</a>
          </div>
        </div>
      </div>
    </c:forEach>
    <%--<div class="research-panel">
      <header>大数据技术</header>
      <div class="panel-body">
        <p>软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。</p>
      </div>
      <div class="panel-footer">
        <div class="more">
          <a href="">详情</a>
        </div>
      </div>
    </div>
    <div class="research-panel">
      <header>高级计算机网络</header>
      <div class="panel-body">
        <p>在对TCP/IP协议原理进行简单回顾的基础上，系统介绍了计算机网络研究和应用领域中的一些高级主题、前沿主题和最新进展。具体包括三大部分：下一代互联网协议IPv6、多播技术、无线网络与移动IP技术。通过这些内容的学习，可以为高年级本科生深入理解TCP/IP协议、拓宽知识面、接受了解最新发展技术提供帮助。更为重要的是，可以为研究生在计算机网络领域的论文选题打好基础，储备知识。</p>
      </div>
      <div class="panel-footer">
        <div class="more">
          <a href="">详情</a>
        </div>
      </div>
    </div>
    <div class="research-panel">
      <header>高级数据库技术</header>
      <div class="panel-body">
        <p>面向计算机专业研究生和高年级本科生学习高级数据库知识而编写的一本教材，其特点是内容全面，既包括数据库的基础理论知识，又包括高级数据库其他方面的知识，如数据挖掘、移动数据库、Web数据库、空间数据库等。</p>
      </div>
      <div class="panel-footer">
        <div class="more">
          <a href="">详情</a>
        </div>
      </div>
    </div>
    <div class="research-panel">
      <header>网络软件与系统安全系</header>
      <div class="panel-body">
        <p>网络软件与系统安全系面向国家安全需求、网络软件与系统安全发展需求、以及大数据、云计算系统安全保障与隐私保护产品的市场需求，培养能适应产业和技术发展要求的高层次、实用型、复合交叉型、国际化人才。 </p>
      </div>
      <div class="panel-footer">
        <div class="more">
          <a href="">详情</a>
        </div>
      </div>
    </div>
    <div class="research-panel">
      <header>软件工程与数据技术系</header>
      <div class="panel-body">
        <p>软件工程与数据技术系系统系面向国民经济信息化建设和电子信息产业发展需要，培养学生具有扎实的专业理论基础、合理的专业知识结构、优秀的职业素养和团队精神，侧重提高学生在集成电路、嵌入式软件与系统、应用电子或新能源方面的设计与工程实践能力、项目组织与管理能力、创新精神与国际竞争能力。 </p>
      </div>
      <div class="panel-footer">
        <div class="more">
          <a href="">详情</a>
        </div>
      </div>
    </div>--%>

    <div class="research-footer">
      <img src="/images/researchDirectionFooter.jpg">
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