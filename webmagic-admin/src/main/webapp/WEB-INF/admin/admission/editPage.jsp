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
        <label class="layui-form-label">招生信息</label>
        <div class="layui-input-block">
          <input name="id" type="hidden" value="${entity.id}" />
          <input type="text" name="title" value="${entity.title}" lay-verify="required" autocomplete="off" placeholder="请输入招生信息" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">信息内容</label>
        <div class="layui-input-block">
          <textarea id="J_content_editer" lay-verify="required" style="display: none;">${entity.content}</textarea>
        </div>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">排序</label>
        <div class="layui-input-block">
          <input type="number" name="sort" value="${entity.sort}" lay-verify="required" lay-verify="required" autocomplete="off" placeholder="请输入排序" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item">
        <div class="layui-input-block">
          <button class="layui-btn" lay-submit="" lay-filter="J_form_submit">提交</button>
          <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
      </div>
      <button id="J_info_submit_btn" style="display: none" class="layui-btn" lay-submit="" lay-filter="J_form_submit" />
    </div>
  </form>
</div>
<script>
  layui.use(['form', 'layedit'], function(){
    var form = layui.form;
    var layedit = layui.layedit;

    var layeditIndex = layedit.build('J_content_editer'); //建立编辑器

    //监听提交
    form.on('submit(J_form_submit)', function(args){
      var param = args.field;
      var layedit = layui.layedit;
      var index = layedit.build('J_content_editer'); //建立编辑器

      $.post('/admission/edit', {
        id: param.id,
        title: param.title,
        content: layedit.getContent(index),
        sort: param.sort
      }, function(result){
        if ('success' == result) {
          layer.msg('操作成功', {
            icon : 1
          });
        } else {
          layer.msg('操作失败', {
            icon : 2
          });
        }
      });


      return false;
    });
  });
</script>
</body>
</html>