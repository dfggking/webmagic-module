<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
  <%@ include file="./common/header.jsp" %>
</head>
<body>
  <!-- 顶部开始 -->
  <div class="container">
    <div class="logo">
      <a href="./index.html">MiDAS ADMIN</a>
    </div>
    <div class="left_open">
      <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
      <li class="layui-nav-item"><a href="javascript:;">+新增</a>
        <dl class="layui-nav-child">
          <!-- 二级菜单 -->
          <dd>
            <a onclick="x_admin_show('备用','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>备用</a>
          </dd>
          <dd>
            <a onclick="x_admin_show('备用','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>备用</a>
          </dd>
          <dd>
            <a onclick="x_admin_show('备用','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>备用</a>
          </dd>
        </dl></li>
    </ul>
    <ul class="layui-nav right" lay-filter="">
      <li class="layui-nav-item"><a href="javascript:;">admin</a>
        <dl class="layui-nav-child">
          <!-- 二级菜单 -->
          <dd>
            <a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a>
          </dd>
          <dd>
            <a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a>
          </dd>
          <dd>
            <a href="./login.html">退出</a>
          </dd>
        </dl></li>
      <li class="layui-nav-item to-index"><a target="_blank" href="/index">前台首页</a></li>
    </ul>

  </div>
  <!-- 顶部结束 -->
  <!-- 中部开始 -->
  <!-- 左侧菜单开始 -->
  <div class="left-nav">
    <div id="side-nav">
      <ul id="nav">
        <li>
          <a href="javascript:;">
            <i class="iconfont">&#xe6b8;</i><cite>系统管理</cite><i class="iconfont nav_right">&#xe697;</i>
          </a>
          <ul class="sub-menu">
            <li><a _href="./wconfig/page"><i class="iconfont">&#xe6a7;</i><cite>网站配置</cite></a></li>
            <li><a _href="javascript:;"><i class="iconfont">&#xe6a7;</i><cite>开发中</cite></a></li>
          </ul>
        </li>
        <li>
          <a href="javascript:;">
            <i class="iconfont">&#xe699;</i><cite>模块管理</cite><i class="iconfont nav_right">&#xe697;</i>
          </a>
          <ul class="sub-menu">
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>网站首页</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./homepage/swiper"><i class="iconfont">&#xe6a7;</i><cite>轮播图管理</cite></a></li>
                <li><a _href="./homepage/institute/introduce"><i class="iconfont">&#xe6a7;</i><cite>研究所介绍</cite></a></li>
                <li><a _href="./homepage/institute/information"><i class="iconfont">&#xe6a7;</i><cite>研究所资讯</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>团队成员</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./member/list"><i class="iconfont">&#xe6a7;</i><cite>成员列表</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>研究方向</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./rdirection/list"><i class="iconfont">&#xe6a7;</i><cite>研究列表</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>论文著作</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./thesis/list"><i class="iconfont">&#xe6a7;</i><cite>论文列表</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>科研项目</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./rproject/list"><i class="iconfont">&#xe6a7;</i><cite>项目列表</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>新闻动态</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./news/list"><i class="iconfont">&#xe6a7;</i><cite>新闻列表</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>课程教学</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./course/list"><i class="iconfont">&#xe6a7;</i><cite>课程列表</cite></a></li>
              </ul>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xe6b5;</i><cite>招生信息</cite><i class="iconfont nav_right">&#xe697;</i>
              </a>
              <ul class="sub-menu">
                <li><a _href="./admission/info"><i class="iconfont">&#xe6a7;</i><cite>信息维护</cite></a></li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <!-- <div class="x-slide_left"></div> -->
  <!-- 左侧菜单结束 -->
  <!-- 右侧主体开始 -->
  <div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
      <ul class="layui-tab-title">
        <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
      </ul>
      <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
          <iframe src='./welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
        </div>
      </div>
    </div>
  </div>
  <div class="page-content-bg"></div>
  <!-- 右侧主体结束 -->
  <!-- 中部结束 -->
  <!-- 底部开始 -->
  <div class="footer">
    <div class="copyright">Copyright ©2018 DFGGKING All Rights Reserved</div>
    <div class="author">技术支持：835317619@qq.com</div>
  </div>
</body>
</html>