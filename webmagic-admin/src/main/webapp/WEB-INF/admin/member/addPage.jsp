<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="../common/header.jsp" %>
</head>
<body>
  <div class="layui-card-body" pad15="">
    <div class="layui-form" wid100="" lay-filter="">
      <div class="layui-form-item" style="display: inline-flex;align-items: center;justify-content: flex-start;">
        <label class="layui-form-label">头像</label>
        <div class="layui-input-inline" style="width: 135px;">
          <img class="layui-upload-img" id="demo1" style="width:120px;height:120px;" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541334737490&di=f0a42dced736696808dee6f13c17092a&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01786557e4a6fa0000018c1bf080ca.png">
        </div>
        <button type="button" class="layui-btn" id="J_avatar_select">选择</button>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
          <input type="text" name="name" value="" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">专业1</label>
        <div class="layui-input-block">
          <input type="text" name="major1" value="" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">专业2</label>
        <div class="layui-input-block">
          <input type="text" name="major2" value="" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">学院</label>
        <div class="layui-input-block">
          <input type="text" name="institute" value="" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">是否展示</label>
        <div class="layui-input-block">
          <input type="radio" name="isShow" value="是" title="是" checked="checked">
          <input type="radio" name="isShow" value="否" title="否">
        </div>
      </div>
      <div class="layui-form-item">
        <div class="layui-input-block">
          <button class="layui-btn" lay-submit="" lay-filter="">立即提交</button>
          <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
      </div>
    </div>
  </div>
<script>
  layui.use('upload', function() {
    var $ = layui.jquery
      , upload = layui.upload;

    //普通图片上传
    var uploadInst = upload.render({
      elem: '#J_avatar_select'
      , url: '/upload/'
      , before: function (obj) {
        //预读本地文件示例，不支持ie8
        obj.preview(function (index, file, result) {
          $('#demo1').attr('src', result); //图片链接（base64）
        });
      }
      , done: function (res) {
        //如果上传失败
        if (res.code > 0) {
          return layer.msg('上传失败');
        }
        //上传成功
      }
      , error: function () {
        //演示失败状态，并实现重传
        var demoText = $('#demoText');
        demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
        demoText.find('.demo-reload').on('click', function () {
          uploadInst.upload();
        });
      }
    });
  });
</script>
</body>
</html>