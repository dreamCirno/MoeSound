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
    <title>Moe Sound</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <script src="static/wasm/wasm_exec.js"></script>
</head>
<body>
<html class="js cssanimations">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="MoeSound 分享高音质ACG音乐">
    <meta name="keywords" content="MoeSound,ACG,无损,音乐,FLAC,高音质">
    <title>MoeSound 分享高音质ACG音乐</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">


    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp">

    <link rel="stylesheet" href="https://web.biu.moe/Public/v2/css/amazeui.min.css">
    <link rel="stylesheet" href="https://web.biu.moe/Public/v2/css/app.css?2">
    <link rel="stylesheet" href="https://web.biu.moe/Public/v2/css/animation.css">
    <script type="text/javascript" async="" defer="" src="//yui-ssl.smartgslb.com/yui.js"></script>
    <script src="https://web.biu.moe/Public/v2/js/jquery.min.js"></script>
    <script src="https://web.biu.moe/Public/v2/js/amazeui.min.js"></script>
    <script src="https://web.biu.moe/Public/v2/js/jquery.form.min.js"></script>
    <script>
        var changeURI = function (data) {
            document.getElementById('i_iframe').setAttribute('src', 'https://biu.moe/iframe.html#changeURI|' + data + '|' + Math.random().toString());
        }

        var playOne = function (data) {
            document.getElementById('i_iframe').setAttribute('src', 'https://biu.moe/iframe.html#playOne|' + data + '|' + Math.random().toString());
        }


        var addOne = function (data) {
            document.getElementById('i_iframe').setAttribute('src', 'https://biu.moe/iframe.html#addOne|' + data + '|' + Math.random().toString());
        }


        var playList = function (data) {
            document.getElementById('i_iframe').setAttribute('src', 'https://biu.moe/iframe.html#playList|' + data + '|' + Math.random().toString());
        }


        var doLogin = function (data) {
            document.getElementById('i_iframe').setAttribute('src', 'https://biu.moe/iframe.html#doLogin|' + data + '|' + Math.random().toString());
        }


        var showNotice = function (title, body, stat) {
            document.getElementById('i_iframe').setAttribute('src', 'https://biu.moe/iframe.html#showNotice|' + title + '|' + body + '|' + stat + '|' + Math.random().toString());
        }

        if (self == top) {
            location.href = 'https://biu.moe/#' + location.pathname + location.search;
        }
        $(document).ready(function () {
            setTimeout(function () {
                changeURI(location.pathname + location.search);
            }, 1000)
        })
    </script>
</head>
<body>
<html class="js cssanimations"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Biu.Moe 分享高音质ACG音乐">
    <meta name="keywords" content="Biu,Moe,ACG,无损,音乐,FLAC,高音质">
    <title>Biu.Moe 分享高音质ACG音乐</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">



    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp">

    <link rel="stylesheet" href="https://web.biu.moe/Public/v2/css/amazeui.min.css">
    <link rel="stylesheet" href="https://web.biu.moe/Public/v2/css/app.css?2">
    <link rel="stylesheet" href="https://web.biu.moe/Public/v2/css/animation.css">
    <script type="text/javascript" async="" defer="" src="https://yui-ssl.smartgslb.com/yui.js"></script><script type="text/javascript">
    var _paq = _paq || [];
    _paq.push(["setCookieDomain", "*.biu.moe"]);
    _paq.push(["setDomains", ["*.biu.moe"]]);
    _paq.push(['trackPageView']);
    _paq.push(['enableLinkTracking']);
    (function() {
        var u="//yui-ssl.smartgslb.com/";
        _paq.push(['setTrackerUrl', u+'yui.php']);
        _paq.push(['setSiteId', '2']);
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'yui.js'; s.parentNode.insertBefore(g,s);
    })();
</script>
    <script src="https://web.biu.moe/Public/v2/js/jquery.min.js"></script>
    <script src="https://web.biu.moe/Public/v2/js/amazeui.min.js"></script>
    <script src="https://web.biu.moe/Public/v2/js/jquery.form.min.js"></script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器。 请 <a
        href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->
<div class="am-sticky-placeholder" style="height: 51px; margin: 0px 0px 19.2px;"><header class="am-topbar am-topbar-inverse" data-am-sticky="{animation: 'slide-top'}" style="margin: 0px;">
    <div class="am-center topbar">
        <h1 class="am-topbar-brand">
            <a href="/Index/home"><svg style="fill:#FFF;width:100px;height:45px;margin-top:2px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 89.67 45">
                <path d="M37.71,27.05c0,1.94-0.89,4.18-2.58,6.21c-1.61,1.9-5.75,5.58-12.08,11.58l-5.15-4.65l10.23-9.68
          c1.23-1.14,1.86-2.2,1.86-3.42c0-1.82-1.56-3.13-4.56-5.07c2.54-2.07,3.89-3.72,3.89-5.45c0-2.07-2.2-3.04-6.51-4.65v22.69h-7.27
          V8.79l7.86-3.25c9,3.51,13.6,5.41,13.6,10.06c0,2.07-0.89,3.89-2.75,5.58C36.57,22.82,37.71,24.68,37.71,27.05z"></path>
                <rect x="41.38" y="12.98" width="7.14" height="21.63"></rect>
                <path d="M68.14,35.46l-1.86-3.63l-7.27,3.63c-4.39-1.82-6.34-4.73-6.34-9.63v-12.8h6.93v11.66
          c0,1.65,0.55,2.7,1.82,3.38c0.46-0.21,1.86-0.89,4.1-2.11V13.02h7.01v13.22c0,1.61,0.8,3.59,2.45,5.87L68.14,35.46z"></path>
                <path d="M49.25,6.01c0,1.45-1.21,2.66-2.23,3.35c-0.56,0.38-1.63,1.34-2.03,2.09c-0.35-0.78-1.47-1.7-2.01-2.08
          c-1.21-0.87-2.26-1.9-2.26-3.36c0-2.1,1.91-3.81,4.27-3.81C47.33,2.21,49.25,3.91,49.25,6.01z"></path>
            </svg></a>
        </h1>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li id="nav-index"><a href="/Index/home">首页</a></li>
                <li class="am-dropdown" data-am-dropdown="">
                    <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">
                        分类 <span class="am-icon-caret-down"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li id="it1"><a href="/Index/type/t/1">动画</a></li>
                        <li id="it2"><a href="/Index/type/t/2">Galgame</a></li>
                        <li id="it3"><a href="/Index/type/t/3">偶像</a></li>
                        <li id="it4"><a href="/Index/type/t/4">东方Project</a></li>
                        <li id="it5"><a href="/Index/type/t/5">VOCALOID</a></li>
                        <li id="it6"><a href="/Index/type/t/6">同人</a></li>
                        <li id="it7"><a href="/Index/type/t/7">纯音乐</a></li>
                        <li id="it0"><a href="/Index/type/t/0">未分类</a></li>
                    </ul>
                </li>
                <li id="nav-client"><a href="/Index/client">客户端</a></li>
                <li id="nav-fm"><a href="https://biu.moe/fm" target="_blank">弹幕电台</a></li>
                <li id="nav-upload"><a href="/Upload">上传音乐</a></li>
            </ul>


            <div class="am-topbar-right">
                <div class="am-topbar-right">
                    <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm" onclick="location.href='/User/login';">登录</button>
                    <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm" onclick="location.href='/User/reg';">注册</button>
                </div>
            </div>


            <form class="am-topbar-form am-topbar-right am-form-inline" role="search" method="GET" action="/Song/search">
                <div class="am-form-group">
                    <input type="text" class="am-form-field am-input-sm" name="data" value="" placeholder="歌曲名、出处">
                </div>
            </form>
        </div>
    </div><!--最外围-->
</header></div>

<div class="am-g am-g-fixed">
    <div class="am-u-sm-12">
        <!--h2 style="margin-top:0px;">登录 Biu.Moe</h2-->
        <div class="am-u-sm-6">
            <form action="/User?action=register" method="POST" class="am-form" id="biuform">
                <fieldset>
                    <legend>注册 Biu.Moe</legend>
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
                        <label for="gender">性别：</label>
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
                    <input type="submit" value="注册" class="am-btn am-round am-btn-primary" id="dosubmit">
                </fieldset>
            </form>
            ※ Moe.Re 老用户可直接登录无需注册
        </div>
    </div>
    <!--div class="grid" style="margin:.625rem 0;">
        <div class="row cells1">
            <div class="cell colspan1">
                <h1>注册 Biu~</h1>
            </div>
            <form method="POST" action="/User/doReg" id="biuform">
                <div class="cell colspan1">
                    <div class="input-control modern text iconic">
                        <input type="text" name="email" placeholder="写上电子邮件地址吧" />
                        <span class="label">邮箱</span>
                        <span class="icon mif-user"></span>
                    </div>
                </div>
                <div class="cell colspan1">
                    <div class="input-control modern password iconic" data-role="input">
                        <input type="password" name="password" placeholder="密码交给我吧_(:з」∠)_" />
                        <span class="label">密码</span>
                        <span class="informer">仅需一次噢_(:з」∠)_</span>
                        <span class="placeholder"></span>
                        <span class="icon mif-lock"></span>
                        <button class="button helper-button reveal"><span class="mif-looks"></span></button>
                    </div>
                </div>
                <div class="cell colspan1">
                    <div class="input-control modern iconic" data-role="input">
                        <input name="name" placeholder="该叫你什么呢=w=" />
                        <span class="label">昵称</span>
                        <span class="icon mif-pencil"></span>
                    </div>
                </div>
                <div class="cell colspan1">
                    <div class="input-control modern iconic" data-role="input">
                        <input name="qq" placeholder="QQ 不填会变成阿卡林" />
                        <span class="label">QQ（仅用于提取头像不公开）</span>
                        <span class="icon"><img src="//web.biu.moe/Public/img/qq.png"></span>
                    </div>
                </div>
                <div class="cell colspan1">
                    <div class="input-control modern iconic" data-role="input">
                        <span class="icon mif-mars" style="margin-top: -15px;"></span>
                        <span style="margin-left:10px;">
                            <label class="input-control radio small-check">
                                <input type="radio" name="gender" value="M" />
                                <span class="check"></span>
                                <span class="caption">汉子</span>
                            </label>
                        </span>
                        <span>
                            <label class="input-control radio small-check">
                                <input type="radio" name="gender" value="F" />
                                <span class="check"></span>
                                <span class="caption">妹子</span>
                            </label>
                        </span>
                        <span>
                            <label class="input-control radio small-check">
                                <input type="radio" name="gender" value="X" />
                                <span class="check"></span>
                                <span class="caption">秀吉</span>
                            </label>
                        </span>
                    </div>
                </div>
                <div class="cell colspan1">
                    <h2>Moe.Re 账号可直接登录_(:з」∠)_</h2>
                </div>
                <div class="cell colspan1">
                    <input type="submit" class="button primary" id="dosubmit" value="注册" />
                </div>
            </form>
        </div>
    </div-->
    <script type="text/javascript">
        $(document).ready(function(){
            $('#biuform').submit(function(e){
                if($('#password2').val()!=$('#password').val())
                {
                    showNotice('注册失败', '两次输入的密码不符','alert');
                    return false;
                }
                $('#dosubmit').attr('disabled',true);
                $('#dosubmit').attr('value','正在处理中...');
                $(this).ajaxSubmit(options);
                return false;
            });
            var options = {
                success: function(ob,errStr){
                    if(ob.status==true)
                    {
                        showNotice('注册成功', '稍后回到首页','success');
                        setTimeout("location.href='/Index/home';",2000);
                        doLogin(ob.token);
                    }else if(ob.status==false)
                    {
                        showNotice('注册失败', ob.error,'alert');
                        $('#dosubmit').attr('disabled',false);
                        $('#dosubmit').attr('value','注册');
                    }
                    return false;
                },
                error: function(ob,errStr) {
                    showNotice('注册失败', '网络错误请重试','alert');
                    $('#dosubmit').attr('disabled',false);
                    $('#dosubmit').attr('value','注册');
                    return false;
                }
            }
        });
    </script>

    <div class="am-u-sm-12">
        <h6>© 2013-2019 Biu.Moe 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
<script>
    $(function(){
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

        if(location.pathname=='/Index/home')
        {
            $('#nav-index').addClass('am-active');
        }else if(location.pathname=='/fm')
        {
            $('#nav-fm').addClass('am-active');
        }else if(location.pathname=='/Index/client')
        {
            $('#nav-client').addClass('am-active');
        }else if(location.pathname=='/Upload')
        {
            $('#nav-upload').addClass('am-active');
        }else if(location.pathname=='/Bangumi')
        {
            $('#nav-bangumi').addClass('am-active');
        }else if(location.pathname=='/Live')
        {
            $('#nav-live').addClass('am-active');
        }else if(location.pathname=='/Comic')
        {
            $('#nav-comic').addClass('am-active');
        }
    });

    var showAvatarMenu=function(){
        $('#myAvatar').dropdown('open');
    }

    $(document).mouseover(function(e){
        if($('#myAvatar').has(e.target).length==0 && $('#avatarMenu').has(e.target).length==0)
            $('#myAvatar').dropdown('close');
    });
</script>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>