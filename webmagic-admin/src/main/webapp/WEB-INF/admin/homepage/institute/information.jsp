<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="../../common/header.jsp" %>
  <link href="/css/admin/style.css" rel="stylesheet">
  <script type="text/javascript" charset="utf-8" src="/third-party/umeditor/umeditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src="/third-party/umeditor/umeditor.min.js"></script>
  <script type="text/javascript" src="/third-party/umeditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
  <div class="x-nav">
    <span class="layui-breadcrumb">
       <a href="">模块管理</a>
      <a href="">网站首页</a>
      <a><cite>研究所资讯</cite></a>
    </span>
    <a class="layui-btn layui-btn-small" style="line-height: 1.6em; margin-top: 3px; float: right" href="javascript:location.replace(location.href);" title="刷新">
      <i class="layui-icon layui-icon-refresh" style="line-height: 38px"></i>
    </a>
  </div>
  <div class="x-body">
    <blockquote class="layui-elem-quote">
      研究所资讯
    </blockquote>

    <table class="layui-hide" id="J_list"></table>

  </div>

  <script>
    layui.use('table', function(){
      var table = layui.table;

      table.render({
        elem: '#J_list'
        ,url:'/homepage/institute/info/list'
        ,parseData: function(res){ //res 即为原始返回的数据
          console.info(res);
          return {
            "code": res.status, //解析接口状态
            "msg": res.message, //解析提示文本
            "count": res.total, //解析数据长度
            "data": res.data.item //解析数据列表
          };
        }
        ,cellMinWidth: 100 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
        ,cols: [[
          {field:'id', width:80, title: 'ID', sort: true}
          ,{field:'title', width:600, title: '标题'}
          ,{field:'content', width:120,title: '内容'}
          ,{field:'type', title: '类别'}
          ,{field:'createAt', width:165, title: '创建时间'}
          // ,{field:'createAt', width:165, title: '创建时间', templet: function(args){
          //     return new Date(args.createAt).Format("yyyy-MM-dd hh:mm:ss");
          //   }}
          ,{fixed: 'right', title:'操作', toolbar: '#bar', width:150}
        ]]
        ,toolbar: '#toolbar',
        defaultToolbar: ['filter', 'exports']
      });

      //头工具栏事件
      table.on('toolbar(J_list)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id);
        switch(obj.event){
          case 'addData':
            var data = checkStatus.data;
            layer.alert(JSON.stringify(data));
            break;
          case 'getCheckLength':
            var data = checkStatus.data;
            layer.msg('选中了：'+ data.length + ' 个');
            break;
          case 'isAll':
            layer.msg(checkStatus.isAll ? '全选': '未全选');
            break;
        };
      });


      //监听单元格编辑
      table.on('edit(J_list)', function(obj){
        var value = obj.value //得到修改后的值
          ,data = obj.data //得到所在行所有键值
          ,field = obj.field; //得到字段
        layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
      });
    });
  </script>
  <script type="text/html" id="toolbar">
    <div class="layui-btn-container">
      <button class="layui-btn layui-btn-sm" lay-event="addData">添加</button>
    </div>
  </script>
  <script type="text/html" id="bar">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  </script>
</body>

</html>