<%--
  User: dreamCirno
  Date: 2019/1/4
  Time: 22:41
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setHeader("Access-Control-Allow-Origin", "*");
%>
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
    <link href="/css/app.7ff607468a9edb1eb7c284c4adb32ced.css" rel="stylesheet">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->


    <link rel="stylesheet" href="css/amazeui.css">
    <link rel="stylesheet" href="/css/app.css?2">
    <link rel="stylesheet" href="/css/animation.css">
    <link href="/css/app.7ff607468a9edb1eb7c284c4adb32ced.css" rel="stylesheet">
    <script src="js/jquery/jquery.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="https://biu.moe/static/wasm/wasm_exec.js"></script>
    <script src="js/jquery.form.min.js"></script>
    <style>
        .get {
            background: #1E5B94;
            color: #fff;
            text-align: center;
            padding: 100px 0;
        }

        .get-title {
            font-size: 200%;
            border: 2px solid #fff;
            padding: 20px;
            display: inline-block;
        }

        .get-btn {
            background: #fff;
        }

        .detail {
            background: #fff;
        }

        .detail-h2 {
            text-align: center;
            font-size: 150%;
            margin: 40px 0;
        }

        .detail-h3 {
            color: #1f8dd6;
        }

        .detail-p {
            color: #7f8c8d;
        }

        .detail-mb {
            margin-bottom: 30px;
        }

        .hope {
            background: #0bb59b;
            padding: 50px 0;
        }

        .hope-img {
            text-align: center;
        }

        .hope-hr {
            border-color: #149C88;
        }

        .hope-title {
            font-size: 140%;
        }

        .about {
            background: #fff;
            padding: 40px 0;
            color: #7f8c8d;
        }

        .about-color {
            color: #34495e;
        }

        .about-title {
            font-size: 180%;
            padding: 30px 0 50px 0;
            text-align: center;
        }

        .footer p {
            color: #7f8c8d;
            margin: 0;
            padding: 15px 0;
            text-align: center;
            background: #2d3e50;
        }
    </style>
    <!-- Live2D -->
    <!-- 实现拖动效果，需引入 JQuery UI -->
    <script src="/js/jquery-ui-1.10.3.custom.min.js"></script>
    <!--看板娘-->
    <link rel="stylesheet" type="text/css"
          href="https://www.fghrsh.net/zb_users/plugin/live2d/assets/waifu.min.css?v=1.4.2">
</head>
<body>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


<div class="am-sticky-placeholder" style="height: 51px; margin: 0px 0px 19.2px;">
    <div class="am-sticky-placeholder" style="height: 51px; margin: 0px;">
        <header class="am-topbar am-topbar-inverse am-sticky am-animation-slide-top"
                data-am-sticky="{animation: 'slide-top'}" style="margin: 0px; top: 0px; left: 0px; width: 1654px;">
            <div class="am-center topbar">
                <h1 class="am-topbar-brand">
                    <a href="/Index/home">
                        <svg style="fill:#FFF;width:100px;height:45px;margin-top:2px;"
                             xmlns="http://www.w3.org/2000/svg" viewBox="0 0 89.67 45">
                            <path d="M37.71,27.05c0,1.94-0.89,4.18-2.58,6.21c-1.61,1.9-5.75,5.58-12.08,11.58l-5.15-4.65l10.23-9.68
          c1.23-1.14,1.86-2.2,1.86-3.42c0-1.82-1.56-3.13-4.56-5.07c2.54-2.07,3.89-3.72,3.89-5.45c0-2.07-2.2-3.04-6.51-4.65v22.69h-7.27
          V8.79l7.86-3.25c9,3.51,13.6,5.41,13.6,10.06c0,2.07-0.89,3.89-2.75,5.58C36.57,22.82,37.71,24.68,37.71,27.05z"></path>
                            <rect x="41.38" y="12.98" width="7.14" height="21.63"></rect>
                            <path d="M68.14,35.46l-1.86-3.63l-7.27,3.63c-4.39-1.82-6.34-4.73-6.34-9.63v-12.8h6.93v11.66
          c0,1.65,0.55,2.7,1.82,3.38c0.46-0.21,1.86-0.89,4.1-2.11V13.02h7.01v13.22c0,1.61,0.8,3.59,2.45,5.87L68.14,35.46z"></path>
                            <path d="M49.25,6.01c0,1.45-1.21,2.66-2.23,3.35c-0.56,0.38-1.63,1.34-2.03,2.09c-0.35-0.78-1.47-1.7-2.01-2.08
          c-1.21-0.87-2.26-1.9-2.26-3.36c0-2.1,1.91-3.81,4.27-3.81C47.33,2.21,49.25,3.91,49.25,6.01z"></path>
                        </svg>
                    </a>
                </h1>

                <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
                        data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
                        class="am-icon-bars"></span></button>

                <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
                    <ul class="am-nav am-nav-pills am-topbar-nav">
                        <li id="nav-index"><a href="/web.jsp" target="contentFrame" >首页</a></li>
                        <li class="am-dropdown" data-am-dropdown="">
                            <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">
                                分类 <span class="am-icon-caret-down"></span>
                            </a>
                            <ul class="am-dropdown-content">
                                <li id="it1"><a href="/Index/type/t/1"  target="contentFrame">动画</a></li>
                                <li id="it2"><a href="/Index/type/t/2"  target="contentFrame">Galgame</a></li>
                                <li id="it3"><a href="/Index/type/t/3"  target="contentFrame">偶像</a></li>
                                <li id="it4"><a href="/Index/type/t/4"  target="contentFrame">东方Project</a></li>
                                <li id="it5"><a href="/Index/type/t/5"  target="contentFrame">VOCALOID</a></li>
                                <li id="it6"><a href="/Index/type/t/6"  target="contentFrame">同人</a></li>
                                <li id="it7"><a href="/Index/type/t/7"  target="contentFrame">纯音乐</a></li>
                                <li id="it0"><a href="/Index/type/t/0"  target="contentFrame">未分类</a></li>
                            </ul>
                        </li>
                        <li id="nav-client"><a href="/Index/client"  target="contentFrame">客户端</a></li>
                        <li id="nav-fm"><a href="https://biu.moe/fm" target="_blank">弹幕电台</a></li>
                        <li id="nav-upload"><a href="/upload.jsp"  target="contentFrame">上传音乐</a></li>
                    </ul>


                    <div class="am-topbar-right">
                        <div class="am-topbar-right">
                            <a class="am-btn am-btn-primary am-topbar-btn am-btn-sm"
                                    href='/login.jsp'  target="contentFrame">登录
                            </a>
                            <a class="am-btn am-btn-primary am-topbar-btn am-btn-sm"
                                    href='/register.jsp'  target="contentFrame">注册
                            </a>
                        </div>
                    </div>


                    <form class="am-topbar-form am-topbar-right am-form-inline" role="search" method="GET"
                          action="/Song/search">
                        <div class="am-form-group">
                            <input type="text" class="am-form-field am-input-sm" name="data" value=""
                                   placeholder="歌曲名、出处">
                        </div>
                    </form>
                </div>
            </div><!--最外围-->
        </header>
    </div>
</div>


<div style="position: fixed;left: 0;top: 80px;width:100%;    height: auto;border:0;bottom:60px;">
    <iframe name="contentFrame" id="g_iframe" scrolling="auto" frameborder="0"
            style="position: absolute;left: 0;top: 0;width:100%;height:100%;border:0;"
            src="web.jsp" allowfullscreen="" webkitallowfullscreen="" mozallowfullscreen=""
            oallowfullscreen="" msallowfullscreen=""></iframe>
</div>

<div class="waifu" style="bottom: 50px;">
    <div class="waifu-tips"></div>
    <canvas id="live2d" class="live2d"></canvas>
    <div class="waifu-tool">
        <span class="fui-home"></span>
        <span class="fui-chat"></span>
        <span class="fui-eye"></span>
        <span class="fui-user"></span>
        <span class="fui-photo"></span>
        <span class="fui-info-circle"></span>
        <span class="fui-cross"></span>
    </div>
</div>
<script src="/js/waifu-tips.min.js?v=1.4.2-fix3"></script>
<script src="/js/live2d.min.js?v=1.0.5"></script>
<script type="text/javascript">
    live2d_settings['hitokotoAPI'] = '\fghrsh.net';
    live2d_settings['modelId'] = 6;
    live2d_settings['modelTexturesId'] = 4;
    live2d_settings['waifuEdgeSide'] = 'right:30';
    live2d_settings['waifuDraggable'] = 'axis-x';
    live2d_settings['showHitokoto'] = true;
    live2d_settings['homePageUrl'] = 'localhost:8080'
    initModel("/json/waifu-tips.json?v=1.4.2");
</script>

<div id="app">
    <audio id="myaudio"></audio>
    <div class="list-bottom" style="display: none;">
        <div class="list-head"><h4>播放列表 (1)</h4> <!---->
            <div class="volume"><span class="vstr">音量</span>
                <div role="slider" aria-valuemin="0" aria-valuemax="1" aria-orientation="horizontal"
                     class="el-slider volume-slider" aria-valuetext="1" aria-label="slider between 0 and 1"><!---->
                    <div class="el-slider__runway">
                        <div class="el-slider__bar" style="width: 100%; left: 0%;"></div>
                        <div tabindex="0" class="el-slider__button-wrapper" style="left: 100%;">
                            <div class="el-slider__button el-tooltip" aria-describedby="el-tooltip-1884"
                                 tabindex="0"></div>
                        </div><!----></div>
                </div>
            </div>
            <div class="like-all"><i class="el-icon-star-on"></i> 收藏全部</div>
        </div>
        <div class="list-body">
            <div class="list-left">
                <ul>
                    <li data-sid="7626">
                        <div class="sing">
                            <div class="sing-1"></div>
                            <div class="sing-2">secret passion</div>
                            <div class="sing-3">ほたる</div>
                            <div class="sing-4">Drizzle Doll</div>
                            <div class="sing-5">05:22</div>
                            <div class="sing-6"><i class="el-icon-plus"></i> <i class="el-icon-share"></i> <i
                                    class="el-icon-delete"></i></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="player-bottom">
        <div class="player-body">
            <div class="player-ctrl l">
                <button id="prev">
                    <svg>
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/img/i.svg#prev"></use>
                    </svg>
                </button>
                <button id="play" class="play"><span class="playing"><svg><use
                        xlink:href="/static/img/i.svg#play"></use></svg></span> <span class="pauseing"><svg><use
                        xlink:href="/static/img/i.svg#pause"></use></svg></span></button>
                <button id="next">
                    <svg>
                        <use xlink:href="/static/img/i.svg#next"></use>
                    </svg>
                </button>
            </div>
            <div class="player-ctrl r">
                <button id="mode" mode="while" class="while"><span class="randing"><svg><use
                        xlink:href="/static/img/i.svg#rand"></use></svg></span> <span class="whileing"><svg><use
                        xlink:href="/static/img/i.svg#while"></use></svg></span> <span class="oneing"><svg><use
                        xlink:href="/static/img/i.svg#one"></use></svg></span></button>
                <button>
                    <svg>
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/img/i.svg#list"></use>
                    </svg>
                </button>
            </div>
            <div class="player-info">
                <div class="player-cover"><img id="player-cover-img" src="https://web.biu.moe/Public/img/biu.png"
                                               alt=""></div>
                <h2 style="color: rgb(255, 255, 255);">欢迎光临 MoeSound </h2>
                <h3> 「请在网页里点击歌曲的播放按钮」</h3> <h4><span class="level-info">无损</span> <span>44.1kHz</span> <span
                    style="margin-right: 5px;">16bits</span> 00:00 / 00:00</h4>
                <div class="slider">
                    <div class="bar-bottom">
                        <div class="bar-top"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="el-dialog__wrapper" style="display: none;">
        <div role="dialog" aria-modal="true" aria-label="收藏到歌单" class="el-dialog el-dialog--center"
             style="margin-top: 15vh; width: 30%;">
            <div class="el-dialog__header"><span class="el-dialog__title">收藏到歌单</span>
                <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i
                        class="el-dialog__close el-icon el-icon-close"></i></button>
            </div><!---->
            <div class="el-dialog__footer"><span class="dialog-footer"><button type="button"
                                                                               class="el-button el-button--default"><!---->
                <!----><span>取 消</span></button> <button type="button" class="el-button el-button--success"><!---->
                <!----><span>确 定</span></button></span></div>
        </div>
    </div>
</div>
<div style="display:none;">
    <script type="text/javascript" src="https://tajs.qq.com/stats?sId=52366372" charset="UTF-8"></script>
    <script src="https://s11.cnzz.com/z_stat.php?id=1256971235&amp;web_id=1256971235" language="JavaScript"></script>
    <script src="https://c.cnzz.com/core.php?web_id=1256971235&amp;t=z" charset="utf-8" type="text/javascript"></script>
    <a href="https://www.cnzz.com/stat/website.php?web_id=1256971235" target="_blank" title="站长统计">站长统计</a></div>

<%--<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>--%>
<%--<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>
</body>
</html>