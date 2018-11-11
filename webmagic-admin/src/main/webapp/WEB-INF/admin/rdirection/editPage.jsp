<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="../common/header.jsp" %>
</head>
<body>
<div class="layui-card-body" pad15="">
  <form action="" method="post">
    <div class="layui-form" wid100="" lay-filter="">
      <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-block">
          <input name="id" type="hidden" value="${entity.id}" />
          <input type="text" name="title" value="${entity.title}" lay-verify="required" lay-verify="required" autocomplete="off" placeholder="请输入标题" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">内容</label>
        <div class="layui-input-block">
          <textarea name="content" placeholder="请输入内容" lay-verify="required" class="layui-textarea" style="min-height: 500px;">${entity.content}</textarea>
        </div>
      </div>
      <button id="J_info_submit_btn" style="display: none" class="layui-btn" lay-submit="" lay-filter="J_form_submit" />
    </div>
  </form>
</div>
<script>
  layui.use('form', function(){
    var form = layui.form;

    //监听提交
    form.on('submit(J_form_submit)', function(args){
      var param = args.field;
      $.post('/rdirection/edit', {
        id: param.id,
        title: param.title,
        content: param.content
      }, function(result){
        if ('success' == result) {
          layer.msg('操作成功', {
            icon : 1
          });
        } else {

        }
      });
      return false;
    });
  });
</script>
</body>
</html>