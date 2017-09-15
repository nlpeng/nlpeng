<%@ page language="java" import="java.util.*"
		 pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html lang="zh-CN" class="page-home">
<head>
	<meta charset="UTF-8">
	<title>NLpeng数据帝国</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
	<base href="<%=basePath%>">
	<title>登录界面</title>
</head>
<link href="state/css/user/default.css" rel="stylesheet" type="text/css" />
<!--必要样式-->
<link href="state/css/user/styles.css" rel="stylesheet" type="text/css" />
<link href="state/css/user/demo.css" rel="stylesheet" type="text/css" />
<link href="state/css/user/loaders.css" rel="stylesheet" type="text/css" />
<body>
	<div class='login'>
	  <div class='login_title'>
	    <span>管理员登录</span>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='state/img/user/user_icon_copy.png'>
	      </div>
	      <input name="login" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value="kbcxy"/>
	        <div class='validation'>
	          <img alt="" src='state/img/user/tick.png'>
	        </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='state/img/user/lock_icon_copy.png'>
	      </div>
	      <input name="pwd" placeholder='密码' maxlength="16" type='text' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='state/img/user/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='state/img/user/key.png'>
	      </div>
	      <input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
	      <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code();" style="position: absolute;">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='button' value='登录'>
	    </div>
	  </div>
	  <div class='success'>
	  </div>
	  <div class='disclaimer'>
	    <p>欢迎登陆后台管理系统</p>
	  </div>
	</div>
	<div class='authent'>
	  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
        </div>
	  <p>认证中...</p>
	</div>
	<div class="OverWindows"></div>
    <link href="state/layui/css/layui.css" rel="stylesheet" type="text/css" />
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="state/js/common/jquery-ui.min.js"></script>
	<script type="text/javascript" src='state/js/common/stopExecutionOnTimeout.js?t=1'></script>
    <script src="state/layui/layui.js" type="text/javascript"></script>
    <script src="state/js/common/Particleground.js" type="text/javascript"></script>
    <script src="state/js/common/Treatment.js" type="text/javascript"></script>
    <script src="state/js/common/jquery.mockjax.js" type="text/javascript"></script>
	<script src="state/js/user/login.js" type="text/javascript"></script>
</body>
</html>
