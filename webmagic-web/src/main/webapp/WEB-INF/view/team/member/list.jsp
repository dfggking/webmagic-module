<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="../../common/head.jsp"%>
    <link rel="stylesheet" href="/css/teamMember/style.css?v=<%=new Date().getTime() %>" >
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
            <li class="active"><a href="/team/member/list">团队成员</a></li>
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
    <div class="nav-panel nav-teamMember">
      <div class="nav-center">
        <div class="nav-title clearfix"><span class="label">一一</span><span>团队成员</span></div>
        <h2 class="nav-h2">Team Members</h2>
        <span class="nav-span">
          <a href="">网站首页</a>
          <a class="dot"> > </a>
          <a href="">团队成员</a>
        </span>
      </div>
    </div>
    <div class="container member-container top-margin clearfix">
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1785879683,3860235492&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">李明亮</div>
          <div class="research-area">
            <span>电子科学与技术</span>
            <span>计算机科学与技术</span>
          </div>
          <div class="academy">电子信息工程学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2188147694,166936279&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">马宇辰</div>
          <div class="research-area">
            <span>通信与信息系统</span>
            <span>计算机科学与技术</span>
          </div>
          <div class="academy">电子信息工程学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1296055052,917076265&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">刘宁</div>
          <div class="research-area">
            <span>通信与信息系统</span>
            <span>云计算系统结构与性能分析云计算系统结构与性能分析</span>
          </div>
          <div class="academy">电子信息工程学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=18226040,3086833405&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">郭玉佼</div>
          <div class="research-area">
            <span>高效组合优化与图论算法</span>
            <span>控制科学与工程</span>
          </div>
          <div class="academy">计算机与信息技术学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=404726997,1829698615&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">王焱</div>
          <div class="research-area">
            <span>信号与信息处理</span>
            <span>交通信息工程及控制云计算系统结构与性能分析云计算系统结构与性能分析</span>
          </div>
          <div class="academy">经济管理学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=848498049,2427114824&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">苏金宝</div>
          <div class="research-area">
            <span>物流管理与工程</span>
            <span>电子科学与技术</span>
          </div>
          <div class="academy">理学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035586328,1002530199&fm=27&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">张玉璞</div>
          <div class="research-area">
            <span>马克思主义</span>
          </div>
          <div class="academy">马克思主义学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2630115132,3754127530&fm=26&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">庞坤缺</div>
          <div class="research-area">
            <span>光学工程</span>
            <span>载运工具运用工程</span>
          </div>
          <div class="academy">电气工程学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3640095179,274887281&fm=26&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">石磊</div>
          <div class="research-area">
            <span>计算数学</span>
            <span>云计算系统结构与性能分析</span>
          </div>
          <div class="academy">理学院</div>
        </div>
      </div>
      <div class="member-panel">
        <div class="avatar">
          <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1518595961,2869550916&fm=26&gp=0.jpg">
        </div>
        <div class="member-info">
          <div class="name">刘晓鹏</div>
          <div class="research-area">
            <span>电气工程</span>
            <span>载运工具运用工程</span>
          </div>
          <div class="academy">电子信息工程学院</div>
        </div>
      </div>
    </div>
    <jsp:include page="../../common/footer.jsp" />
    <script>
      $(function(){

        $('img').on('mousedown',function (e) {
            e.preventDefault();
        });
      });
    </script>
  </body>
</html>