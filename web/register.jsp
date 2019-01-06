<%--
  User: dreamCirno
  Date: 2019/1/4
  Time: 23:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>萌音 - MoeSound</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css?2">
    <link rel="stylesheet" href="/css/animation.css">
    <script src="/js/jquery/jquery.js"></script>
    <script src="/js/amazeui.min.js"></script>
    <script src="/js/jquery.form.min.js"></script>
</head>
<body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<div class="am-g am-g-fixed">
    <div class="am-u-sm-12">
        <!--h2 style="margin-top:0px;">登录 MoeSound</h2-->
        <div class="am-u-sm-6">
            <form action="/User?action=register" method="POST" class="am-form" id="biuform">
                <fieldset>
                    <legend>注册 MoeSound</legend>
                    <div class="am-form-group">
                        <label for="username">账号：</label>
                        <input type="text" id="username" name="username">
                    </div>
                    <div class="am-form-group">
                        <label for="password">密码：</label>
                        <input type="password" id="password" name="password">
                    </div>
                    <div class="am-form-group">
                        <label for="password2">重复密码：</label>
                        <input type="password" id="password2" name="password2">
                    </div>
                    <div class="am-form-group">
                        <label for="sex">性别：</label>
                        <label class="am-radio-inline">
                            <input type="radio" name="sex" value="0"> 汉子
                        </label>
                        <label class="am-radio-inline">
                            <input type="radio" name="sex" value="1"> 妹子
                        </label>
                        <label class="am-radio-inline">
                            <input type="radio" name="sex" value="2"> 秀吉
                        </label>
                    </div>
                    <div class="am-form-group">
                        <label for="question">密保问题：</label>
                        <input type="text" id="question" name="question">
                    </div>
                    <div class="am-form-group">
                        <label for="answer">密保答案：</label>
                        <input type="text" id="answer" name="answer">
                    </div>
                    <input type="submit" value="注册" class="am-btn am-round am-btn-primary" id="dosubmit">
                </fieldset>
            </form>
            ※ Moe.Re 老用户可直接登录无需注册
        </div>
    </div>
    <div class="am-u-sm-12">
        <h6>© 2018-2019 MoeSound 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
</body>
</html>