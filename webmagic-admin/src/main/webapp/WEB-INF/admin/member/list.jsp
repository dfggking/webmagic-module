<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="../common/header.jsp" %>
</head>
<body>
  <div class="x-nav">
    <span class="layui-breadcrumb">
      <a href="">首页</a>
      <a href="">团队成员</a>
      <a><cite>成员列表</cite></a>
    </span>
    <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="javascript:location.replace(location.href);" title="刷新">
      <i class="layui-icon layui-icon-refresh" style="line-height: 38px"></i>
    </a>
  </div>
  <div class="x-body">
    <div class="layui-row">
      <form class="layui-form layui-col-md12 x-so">
        <input type="text" name="username" placeholder="请输入姓名" autocomplete="off" class="layui-input" style="width: 200px">
        <button class="layui-btn" lay-submit="" lay-filter="sreach">
          <i class="layui-icon">&#xe615;</i>
        </button>
      </form>
    </div>
    <xblock>
      <%--<button class="layui-btn layui-btn-danger" onclick="delAll()">
        <i class="layui-icon"></i>批量删除
      </button>--%>
      <button class="layui-btn" onclick="x_admin_show('添加成员','./addPage')">
        <i class="layui-icon"></i>添加
      </button>
      <span class="x-right" style="line-height: 40px">共有数据：${fn:length(list)} 条</span>
    </xblock>
    <table class="layui-table">
      <thead>
        <tr>
          <th>头像</th>
          <th>姓名</th>
          <th>专业一</th>
          <th>专业二</th>
          <th>学院</th>
          <th>状态</th>
          <th>操作</th>
      </thead>
      <tbody>
        <c:forEach items="${list}" var="member" varStatus="s">
        <tr>
          <td data-field="avatar" style="width: 100px;">
            <img src="${member.avatarUrl}" style="width: 100px;height: 100px;">
          </td>
          <td>${member.name}</td>
          <td>${member.major1}</td>
          <td>${member.major2}</td>
          <td>${member.institute}</td>
          <td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">展示</span></td>
          <td class="td-manage">
            <a title="编辑" onclick="member_edit(this, '${member.id}')" href="javascript:;"> <i class="layui-icon">&#xe642;</i></a>
            <a title="删除" onclick="member_del(this, '${member.id}')" href="javascript:;"> <i class="layui-icon">&#xe640;</i>
          </a>
          </td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  <script>
      layui.use('laydate', function() {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
          elem : '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem : '#end' //指定元素
        });
      });

      /*用户-删除*/
      function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function(index) {
          $.ajax({
            url: '/member/del',
            data: {
              id: id
            },
            success: function(args){
              if ("success" == args.result) {
                //发异步删除数据
                $(obj).parents("tr").remove();
                layer.msg('已删除!', {
                  icon : 1,
                  time : 1000
                });
                layer.close(index);
              }
            },
            error: function (args) {
              console.info(args)

            }

          })

        });
      }
    </script>
</body>

</html>