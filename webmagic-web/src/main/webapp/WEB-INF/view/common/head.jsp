<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<meta charset="UTF-8">
<title>MiDAS</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=1, initial-scale=1" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/css/common.css?v=<%=new Date().getTime() %>" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
$(function(){
  $('img').on('mousedown',function (e) {
    e.preventDefault();
  });
});
</script>