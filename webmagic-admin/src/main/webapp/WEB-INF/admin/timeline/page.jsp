<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <%@ include file="../common/header.jsp" %>
  <style rel="stylesheet">
    body{
      margin: 20px;
    }
  </style>
</head>
<body>

  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>版本更新说明</legend>
  </fieldset>
  <ul class="layui-timeline">
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <h3 class="layui-timeline-title">2018年11月14日</h3>
        <p>
          项目1.0演示<i class="layui-icon"></i>
        </p>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <h3 class="layui-timeline-title">2018年11月1日 ~ 2018年11月13日</h3>
        <p>
          项目开发阶段
        </p>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <h3 class="layui-timeline-title">2018年10月1日</h3>
        <p>
          项目启动，开始设计
        </p>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <div class="layui-timeline-title">开始</div>
      </div>
    </li>
  </ul>

  <%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>简约时间线：大事记</legend>
  </fieldset>
  <ul class="layui-timeline">
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <div class="layui-timeline-title">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <div class="layui-timeline-title">2016年，layui 首个版本发布</div>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <div class="layui-timeline-title">2015年，layui 孵化</div>
      </div>
    </li>
    <li class="layui-timeline-item">
      <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
      <div class="layui-timeline-content layui-text">
        <div class="layui-timeline-title">更久前，轮子时代。维护几个独立组件：layer等</div>
      </div>
    </li>
  </ul>--%>


  <script>
  </script>

</body>
</html>