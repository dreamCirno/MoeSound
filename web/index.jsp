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


    <link rel="stylesheet" href="/css/amazeui.css">
    <link rel="stylesheet" href="/css/app.css?2">
    <link rel="stylesheet" href="/css/animation.css">
    <link href="/css/app.7ff607468a9edb1eb7c284c4adb32ced.css" rel="stylesheet">
    <script src="js/jquery/jquery.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="https://biu.moe/static/wasm/wasm_exec.js"></script>
    <script src="js/jquery.form.min.js"></script>
    <script>
        function playOne(src) {
            $("#myaudio", parent.document).attr('src', src);
            $("#myaudio", parent.document)[0].play();
        }
    </script>
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

<div style="position: fixed;left: 0;top: 0;width:100%;    height: auto;border:0;bottom:60px;">
    <iframe name="contentFrame" id="g_iframe" scrolling="auto" frameborder="0"
            style="position: absolute;left: 0;top: 0;width:100%;height:100%;border:0;"
            src="/web.jsp" allowfullscreen="" webkitallowfullscreen="" mozallowfullscreen=""
            oallowfullscreen="" msallowfullscreen=""></iframe>
</div>

<div class="waifu" style="bottom: 60px;">
    <div class="waifu-tips"></div>
    <canvas id="live2d" class="live2d"></canvas>
    <div class="waifu-tool">
        <span class="fui-home"></span>
        <span class="fui-chat"></span>
        <span class="fui-eye"></span>
        <span class="fui-user"></span>
        <span class="fui-photo"></span>
        <%--<span class="fui-info-circle"></span>--%>
        <span class="fui-cross"></span>
    </div>
</div>
<script src="/js/waifu-tips.min.js"></script>
<script src="/js/live2d.min.js"></script>
<script type="text/javascript">
    //live2d_settings['hitokotoAPI'] = '\fghrsh.net';
    live2d_settings['modelId'] = 6;
    live2d_settings['modelTexturesId'] = 4;
    live2d_settings['waifuEdgeSide'] = 'right:30';
    live2d_settings['waifuDraggable'] = 'axis-x';
    live2d_settings['showHitokoto'] = true;
    live2d_settings['homePageUrl'] = 'localhost:8080'
    initModel("https://www.fghrsh.net/zb_users/plugin/live2d/assets/waifu-tips.json?v=1.4.2");
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
                <%--<button id="prev">--%>
                <%--<svg>--%>
                <%--<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/img/i.svg#prev"></use>--%>
                <%--</svg>--%>
                <%--</button>--%>
                <%--<button id="play" class="play">--%>
                    <image id="playButton" src="/img/play.png" onclick="bf()" style="width: 45px;height: 45px"/>
                    <%--<span class="playing" onclick="bf()"><svg>--%>
                    <%--<use xlink:href="/static/img/i.svg#play"></use></svg></span>--%>
                    <%--<span class="pauseing"><svg><use xlink:href="/static/img/i.svg#pause"></use></svg></span>
                    --%>
                    <%--</button>--%>
                <script>
                    function bf() {
                        var audio = document.getElementById('myaudio');
                        if (audio !== null) {
                            //检测播放是否已暂停.audio.paused 在播放器播放时返回false.
                            if (audio.paused) {
                                audio.play();//audio.play();// 这个就是播放
                                $("#playButton").attr("src", "img/play.png")
                            } else {
                                audio.pause();// 这个就是暂停
                                $("#playButton").attr("src", "img/pause.png")
                            }
                            var toggle = true;
                            // $("#playButton").toggle(function() {
                            //     $(this).attr("src", "img/biu.png");
                            // }, function() {
                            //     $(this).attr("src", "img/cirno.png");
                            // }).attr("src", "img/biu.png");
                        }
                    }
                </script>
                <%--<button id="next">--%>
                <%--<svg>--%>
                <%--<use xlink:href="/static/img/i.svg#next"></use>--%>
                <%--</svg>--%>
                <%--</button>--%>
            </div>
            <div class="player-ctrl r">
                <%--<button id="mode" mode="while" class="while"><span class="randing"><svg><use--%>
                <%--xlink:href="/static/img/i.svg#rand"></use></svg></span> <span class="whileing"><svg><use--%>
                <%--xlink:href="/static/img/i.svg#while"></use></svg></span> <span class="oneing"><svg><use--%>
                <%--xlink:href="/static/img/i.svg#one"></use></svg></span></button>--%>
                <%--<button>--%>
                <%--<svg>--%>
                <%--<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/img/i.svg#list"></use>--%>
                <%--</svg>--%>
                <%--</button>--%>
            </div>
            <div class="player-info">
                <div class="player-cover"><img id="player-cover-img" src="https://web.biu.moe/Public/img/biu.png"
                                               alt=""></div>
                <h2 style="color: rgb(255, 255, 255);">欢迎光临 MoeSound </h2>
                <h3> 「请在网页里点击歌曲的播放按钮」</h3>
                <%--<h4>--%>
                <%--<span class="level-info">无损</span> <span>44.1kHz</span> <span--%>
                <%--style="margin-right: 5px;">16bits</span> 00:00 / 00:00--%>
                <%--</h4>--%>
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
<%--<script type="text/javascript" src="/static/js/manifest.112acbeafc600fa5f7f7.js"></script>--%>
<%--<script type="text/javascript" src="/static/js/vendor.de61b8556fead8d60573.js"></script>--%>
<%--<script type="text/javascript" src="/static/js/app.e1dd4f0f9a131cc3414c.js"></script>--%>
<%--<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>--%>
<%--<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>
</body>
</html>