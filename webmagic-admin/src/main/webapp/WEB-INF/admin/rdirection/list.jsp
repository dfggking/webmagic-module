<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="../common/header.jsp" %>
</head>
<body>
<div class="x-nav">
  <span class="layui-breadcrumb">
    <a href="">首页</a>
    <a href="">研究方向</a>
    <a><cite>研究列表</cite></a>
  </span>
  <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right"
     href="javascript:location.replace(location.href);" title="刷新">
    <i class="layui-icon layui-icon-refresh" style="line-height: 38px"></i>
  </a>
</div>
<div class="x-body">

  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>列表</legend>
  </fieldset>
  <div class="layui-row">
    <form class="layui-form layui-col-md12 x-so">
      <input type="text" name="username" placeholder="请输入研究方向" autocomplete="off" class="layui-input" style="min-width: 200px;">
      <button class="layui-btn" lay-submit="" lay-filter="sreach">
        <i class="layui-icon">&#xe615;</i>
      </button>
    </form>
  </div>
  <xblock>
    <button class="layui-btn" onclick="x_admin_show('添加用户','./admin-add.html')">
      <i class="layui-icon"></i>添加
    </button>
    <span class="x-right" style="line-height: 40px">共有数据：88 条</span></xblock>
  <table class="layui-table">
    <thead>
    <tr>
      <th>研究方向</th>
      <th>研究内容</th>
      <th>状态</th>
      <th>操作</th>
    </thead>
    <tbody>
      <c:forEach items="${list}" var="rd">
        <tr>
          <td style="min-width: 150px;">${rd.title}</td>
          <td>${rd.content}</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td class="td-manage" style="min-width: 60px;">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
      </c:forEach>
      <c:forEach items="${list}" var="rd">
        <tr>
          <td style="min-width: 150px;">${rd.title}</td>
          <td>${rd.content}</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td class="td-manage" style="min-width: 60px;">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
      </c:forEach>
      <c:forEach items="${list}" var="rd">
        <tr>
          <td style="min-width: 150px;">${rd.title}</td>
          <td>${rd.content}</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td class="td-manage" style="min-width: 60px;">
            </a> <a title="编辑" onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:"> <i class="layui-icon">&#xe642;</i>
          </a> <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="page">
    <div>
      <a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a> <span class="current">2</span> <a class="num" href="">3</a>
      <a class="num"
         href="">489</a> <a class="next" href="">&gt;&gt;</a>
    </div>
  </div>
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>介绍</legend>
  </fieldset>
  <div class="layui-form-item layui-form-text" style="position:relative;">
    <div class="layui-input-block" style="margin-left:0;margin-right: 110px;">
      <textarea placeholder="请输入内容" class="layui-textarea" style="min-height: 150px;">
        大数据与信息安全研究所主要以大数据分析处理和大数据隐私保护理论为基础，开展面向大数据的多方位研究。基于当今打造智慧城市信息社会的要求，以大规模数据信息为基础，以高效率的数据存储、传输和计算能力为支撑，利用数据挖掘和知识发现等人工智能技术手段，同时又对大数据面临的用户隐私泄露、非授权访问等安全挑战，开展大数据的应用和大数据安全关键技术的研究。研究内容涉及大数据、物联网、信息安全、数据挖掘等领域，为构建物联网环境下受强保护的大数据管理系统，打造智慧城市提供理论和技术支持。研究所汇集安徽大学、日本函馆未来大学、西安电子科技大学、江苏大学等相关研究领域的学者。目前，现有固定员工7人，其中教授1人、副教授4人、讲师2人。博士和硕士研究生近50人。研究所重视学术交流，已与国内外多所大学合作研究并联合培养研究生。
      </textarea>
    </div>
    <button class="layui-btn" style="position: absolute;right: 10px;top:50%;margin-top:-19px;">修改</button>
  </div>
</div>
<script>
  layui.use('laydate', function () {
    var laydate = layui.laydate;

    //执行一个laydate实例
    laydate.render({
      elem: '#start' //指定元素
    });

    //执行一个laydate实例
    laydate.render({
      elem: '#end' //指定元素
    });
  });

  /*用户-停用*/
  function member_stop(obj, id) {
    layer.confirm('确认要停用吗？', function (index) {

      if ($(obj).attr('title') == '启用') {

        //发异步把用户状态进行更改
        $(obj).attr('title', '停用');
        $(obj).find('i').html('&#xe62f;');

        $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
        layer.msg('已停用!', {
          icon: 5,
          time: 1000
        });

      } else {
        $(obj).attr('title', '启用');
        $(obj).find('i').html('&#xe601;');

        $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
        layer.msg('已启用!', {
          icon: 5,
          time: 1000
        });
      }

    });
  }

  /*用户-删除*/
  function member_del(obj, id) {
    layer.confirm('确认要删除吗？', function (index) {
      //发异步删除数据
      $(obj).parents("tr").remove();
      layer.msg('已删除!', {
        icon: 1,
        time: 1000
      });
    });
  }

  function delAll(argument) {

    var data = tableCheck.getData();

    layer.confirm('确认要删除吗？' + data, function (index) {
      //捉到所有被选中的，发异步进行删除
      layer.msg('删除成功', {
        icon: 1
      });
      $(".layui-form-checked").not('.header').parents('tr').remove();
    });
  }
</script>
</body>

</html>