<%--
  User: dreamCirno
  Date: 2019/1/4
  Time: 19:10
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
            <form action="/User?action=login" method="POST" class="am-form" id="biuform">
                <fieldset>
                    <legend>登录 MoeSound</legend>
                    <div class="am-form-group">
                        <label for="username">账号：</label>
                        <input type="text" id="username" name="username">
                    </div>
                    <div class="am-form-group">
                        <label for="password">密码：</label>
                        <input type="password" id="password" name="password">
                    </div>
                    <input type="submit" value="登录" class="am-btn am-round am-btn-primary" id="dosubmit"> <input
                        type="button" class="am-btn am-round am-btn-primary"
                        onclick="javascript:location.href='/forget.jsp';" value="忘记密码Orz">
                </fieldset>
            </form>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#biuform').submit(function (e) {
                $('#dosubmit').attr('disabled', true);
                $('#dosubmit').attr('value', '正在处理中...');
                $(this).ajaxSubmit(options);
                return false;
            });
            var options = {
                success: function (ob, errStr) {
                    if (ob.status == true) {
                        showNotice('登录成功', '稍后回到首页', 'success');
                        setTimeout("location.href='/Index/home';", 2000);
                        doLogin(ob.token);
                    } else if (ob.status == false) {
                        showNotice('登录失败', ob.error, 'alert');
                        $('#dosubmit').attr('disabled', false);
                        $('#dosubmit').attr('value', '登录');
                    }
                    return false;
                },
                error: function (ob, errStr) {
                    showNotice('登录失败', '网络错误请重试', 'alert');
                    $('#dosubmit').attr('disabled', false);
                    $('#dosubmit').attr('value', '登录');
                    return false;
                }
            }
        });
    </script>

    <div class="am-u-sm-12">
        <h6>© 2018-2019 MoeSound 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
<script>
    $(function () {
        /*
        if(location.href.substr(19,11)=='/Index/home')
        {
          $('#nav-index').addClass('am-active');
        }else if(location.href.substr(11,3)=='/fm')
        {
          $('#nav-fm').addClass('am-active');
        }else if(location.href.substr(14,7)=='/Upload')
        {
          $('#nav-upload').addClass('am-active');
        }
        }else if(location.href.substr(14,8)=='/Bangumi')
        {
          $('#nav-bangumi').addClass('am-active');
        }
        */

        if (location.pathname == '/Index/home') {
            $('#nav-index').addClass('am-active');
        } else if (location.pathname == '/fm') {
            $('#nav-fm').addClass('am-active');
        } else if (location.pathname == '/Index/client') {
            $('#nav-client').addClass('am-active');
        } else if (location.pathname == '/Upload') {
            $('#nav-upload').addClass('am-active');
        } else if (location.pathname == '/Bangumi') {
            $('#nav-bangumi').addClass('am-active');
        } else if (location.pathname == '/Live') {
            $('#nav-live').addClass('am-active');
        } else if (location.pathname == '/Comic') {
            $('#nav-comic').addClass('am-active');
        }
    });

    var showAvatarMenu = function () {
        $('#myAvatar').dropdown('open');
    }

    $(document).mouseover(function (e) {
        if ($('#myAvatar').has(e.target).length == 0 && $('#avatarMenu').has(e.target).length == 0)
            $('#myAvatar').dropdown('close');
    });
</script>
</body>
</html>