<%--
  User: dreamCirno
  Date: 2019/1/6
  Time: 1:56
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

<%--<div class="am-sticky-placeholder" style="height: 51px; margin: 0px 0px 19.2px;">--%>
    <%--<div class="am-sticky-placeholder" style="height: 51px; margin: 0px;">--%>
        <%--<header class="am-topbar am-topbar-inverse am-sticky am-animation-slide-top"--%>
                <%--data-am-sticky="{animation: 'slide-top'}" style="margin: 0px; top: 0px; left: 0px; width: 1654px;">--%>
            <%--<div class="am-center topbar">--%>
                <%--<h1 class="am-topbar-brand">--%>
                    <%--<a href="/Index/home">--%>
                        <%--<svg style="fill:#FFF;width:100px;height:45px;margin-top:2px;"--%>
                             <%--xmlns="http://www.w3.org/2000/svg" viewBox="0 0 89.67 45">--%>
                            <%--<path d="M37.71,27.05c0,1.94-0.89,4.18-2.58,6.21c-1.61,1.9-5.75,5.58-12.08,11.58l-5.15-4.65l10.23-9.68--%>
          <%--c1.23-1.14,1.86-2.2,1.86-3.42c0-1.82-1.56-3.13-4.56-5.07c2.54-2.07,3.89-3.72,3.89-5.45c0-2.07-2.2-3.04-6.51-4.65v22.69h-7.27--%>
          <%--V8.79l7.86-3.25c9,3.51,13.6,5.41,13.6,10.06c0,2.07-0.89,3.89-2.75,5.58C36.57,22.82,37.71,24.68,37.71,27.05z"></path>--%>
                            <%--<rect x="41.38" y="12.98" width="7.14" height="21.63"></rect>--%>
                            <%--<path d="M68.14,35.46l-1.86-3.63l-7.27,3.63c-4.39-1.82-6.34-4.73-6.34-9.63v-12.8h6.93v11.66--%>
          <%--c0,1.65,0.55,2.7,1.82,3.38c0.46-0.21,1.86-0.89,4.1-2.11V13.02h7.01v13.22c0,1.61,0.8,3.59,2.45,5.87L68.14,35.46z"></path>--%>
                            <%--<path d="M49.25,6.01c0,1.45-1.21,2.66-2.23,3.35c-0.56,0.38-1.63,1.34-2.03,2.09c-0.35-0.78-1.47-1.7-2.01-2.08--%>
          <%--c-1.21-0.87-2.26-1.9-2.26-3.36c0-2.1,1.91-3.81,4.27-3.81C47.33,2.21,49.25,3.91,49.25,6.01z"></path>--%>
                        <%--</svg>--%>
                    <%--</a>--%>
                <%--</h1>--%>

                <%--<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"--%>
                        <%--data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span--%>
                        <%--class="am-icon-bars"></span></button>--%>

                <%--<div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">--%>
                    <%--<ul class="am-nav am-nav-pills am-topbar-nav">--%>
                        <%--<li id="nav-index"><a href="/web.jsp">首页</a></li>--%>
                        <%--<li class="am-dropdown" data-am-dropdown="">--%>
                            <%--<a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">--%>
                                <%--分类 <span class="am-icon-caret-down"></span>--%>
                            <%--</a>--%>
                            <%--<ul class="am-dropdown-content">--%>
                                <%--<li id="it1"><a href="/Index/type/t/1">动画</a></li>--%>
                                <%--<li id="it2"><a href="/Index/type/t/2">Galgame</a></li>--%>
                                <%--<li id="it3"><a href="/Index/type/t/3">偶像</a></li>--%>
                                <%--<li id="it4"><a href="/Index/type/t/4">东方Project</a></li>--%>
                                <%--<li id="it5"><a href="/Index/type/t/5">VOCALOID</a></li>--%>
                                <%--<li id="it6"><a href="/Index/type/t/6">同人</a></li>--%>
                                <%--<li id="it7"><a href="/Index/type/t/7">纯音乐</a></li>--%>
                                <%--<li id="it0"><a href="/Index/type/t/0">未分类</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li id="nav-client"><a href="/Index/client">客户端</a></li>--%>
                        <%--<li id="nav-fm"><a href="https://biu.moe/fm" target="_blank">弹幕电台</a></li>--%>
                        <%--<li id="nav-upload"><a href="/upload.jsp">上传音乐</a></li>--%>
                    <%--</ul>--%>


                    <%--<div class="am-topbar-right">--%>
                        <%--<div class="am-topbar-right">--%>
                            <%--<button class="am-btn am-btn-primary am-topbar-btn am-btn-sm"--%>
                                    <%--onclick="location.href='/login.jsp';">登录--%>
                            <%--</button>--%>
                            <%--<button class="am-btn am-btn-primary am-topbar-btn am-btn-sm"--%>
                                    <%--onclick="location.href='/register.jsp';">注册--%>
                            <%--</button>--%>
                        <%--</div>--%>
                    <%--</div>--%>


                    <%--<form class="am-topbar-form am-topbar-right am-form-inline" role="search" method="GET"--%>
                          <%--action="/Song/search">--%>
                        <%--<div class="am-form-group">--%>
                            <%--<input type="text" class="am-form-field am-input-sm" name="data" value=""--%>
                                   <%--placeholder="歌曲名、出处">--%>
                        <%--</div>--%>
                    <%--</form>--%>
                <%--</div>--%>
            <%--</div><!--最外围-->--%>
        <%--</header>--%>
    <%--</div>--%>
<%--</div>--%>





<div class="am-g am-g-fixed">
    <div class="am-u-sm-12">
        <div class="am-panel am-panel-primary">
            <div class="am-panel-hd">公告</div>
            <div class="am-panel-bd">
                Biu Lite 客户端 Windows MacOS Linux 全平台发布！建议 PC 用户下载使用！
            </div>
        </div>
    </div>
    <div class="am-u-sm-10">
        <ul data-am-widget="gallery" class="am-gallery am-avg-sm-6 am-gallery-default index-collects am-no-layout">
            <li>
                <div class="am-gallery-item">
                    <a href="/c3010" class="">
                        <img src="/Collect/showCover/lid/3010" width="150" height="150"
                             style="width:150px!important;height:150px!important;">
                        <h3 class="am-gallery-title">2016年4月ACG音乐推荐</h3>
                        <div class="am-gallery-desc">16 首歌曲</div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="/c1797" class="">
                        <img src="/Collect/showCover/lid/1797" width="150" height="150"
                             style="width:150px!important;height:150px!important;">
                        <h3 class="am-gallery-title">午后小憩.</h3>
                        <div class="am-gallery-desc">387 首歌曲</div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="/c1891" class="">
                        <img src="/Collect/showCover/lid/1891" width="150" height="150"
                             style="width:150px!important;height:150px!important;">
                        <h3 class="am-gallery-title">传颂之物</h3>
                        <div class="am-gallery-desc">10 首歌曲</div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="/c2915" class="">
                        <img src="/Collect/showCover/lid/2915" width="150" height="150"
                             style="width:150px!important;height:150px!important;">
                        <h3 class="am-gallery-title">[东方同人]Stack萌萌哒精选歌单♪(´▽｀)</h3>
                        <div class="am-gallery-desc">5 首歌曲</div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="/c1810" class="">
                        <img src="/Collect/showCover/lid/1810" width="150" height="150"
                             style="width:150px!important;height:150px!important;">
                        <h3 class="am-gallery-title">点兔点兔萌萌哒</h3>
                        <div class="am-gallery-desc">10 首歌曲</div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="/c4860" class="">
                        <img src="/Collect/showCover/lid/4860" width="150" height="150"
                             style="width:150px!important;height:150px!important;">
                        <h3 class="am-gallery-title">鹿乃フィーバー！</h3>
                        <div class="am-gallery-desc">69 首歌曲</div>
                    </a>
                </div>
            </li>
        </ul>
    </div>
    <div class="am-u-sm-2 am-text-middle"><h3><span>PC和网页在线：13人<br>一周更新：29首<br>收录歌曲：25257首<br>QQ 群：318148182</span></h3>
    </div>

    <div class="am-g index2">
        <div class="am-u-sm-12">
            <h2>随机推荐</h2>

            <div class="new-songs-box">
                <ul class="am-padding-left-0 new-songs c a-fadein">
                    <li class="new-song">
                        <a class="song-link" href="/s2417">
                            <div class="co">
                                <img src="/Song/showCover/sid/2417" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>物凄い狂っとるフランちゃんが物凄いうた</h3>
                                <h5>Halozy (ななひら)</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('2417');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('2417');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s451">
                            <div class="co">
                                <img src="/Song/showCover/sid/451" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>君をのせて</h3>
                                <h5>井上あずみ</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('451');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('451');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s1482">
                            <div class="co">
                                <img src="/Song/showCover/sid/1482" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>Pray ～祈り～</h3>
                                <h5>IKU</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('1482');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('1482');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s36">
                            <div class="co">
                                <img src="/Song/showCover/sid/36" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>ヱヴァンゲリヲン新劇場版:破::2EM11_B16</h3>
                                <h5>鷺巣詩郎</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('36');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('36');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s6051">
                            <div class="co">
                                <img src="/Song/showCover/sid/6051" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>虹のかけら</h3>
                                <h5>昆夏美</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('6051');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('6051');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s4475">
                            <div class="co">
                                <img src="/Song/showCover/sid/4475" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>Thank You! (765PRO Ver.)</h3>
                                <h5>765PRO ALLSTARS</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('4475');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('4475');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s840">
                            <div class="co">
                                <img src="/Song/showCover/sid/840" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>ユメセカイ </h3>
                                <h5>戸松遥</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('840');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('840');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s7620">
                            <div class="co">
                                <img src="/Song/showCover/sid/7620" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>Early Days</h3>
                                <h5>宮良彩子</h5>
                                <time>1147天前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('7620');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('7620');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s2932">
                            <div class="co">
                                <img src="/Song/showCover/sid/2932" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>夕顔 -album version-</h3>
                                <h5>能登麻美子</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('2932');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('2932');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s678">
                            <div class="co">
                                <img src="/Song/showCover/sid/678" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>ひかりふる</h3>
                                <h5>Kalafina</h5>
                                <time>273天前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('678');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('678');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s62">
                            <div class="co">
                                <img src="/Song/showCover/sid/62" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>二息歩行</h3>
                                <h5>ろん</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('62');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('62');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s5699">
                            <div class="co">
                                <img src="/Song/showCover/sid/5699" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>モがたいリめでもゆめみサマー！</h3>
                                <h5>丹生谷森夏(CV.赤﨑千夏)</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('5699');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('5699');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s2300">
                            <div class="co">
                                <img src="/Song/showCover/sid/2300" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>光を映す影</h3>
                                <h5>World's End Girlfriend</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('2300');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('2300');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                    <li class="new-song">
                        <a class="song-link" href="/s3364">
                            <div class="co">
                                <img src="/Song/showCover/sid/3364" alt="FLASH BEST">
                            </div>
                            <div class="song-info">
                                <h3>ALL 4 YOU</h3>
                                <h5>中川かのん</h5>
                                <time>很久前</time>
                            </div>
                            <div class="recom-ctrl">
                                <button class="fm-play" onclick="playOne('3364');return false;">播放</button>
                                <button class="fm-add" onclick="addOne('3364');return false;">添加</button>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>

    <div class="am-g index2"><!--分3份-->
        <div class="am-u-sm-4">
            <h2>最新更新</h2>
            <ul class="recom-songs">
                <li class="recom-song">
                    <a href="/s25330" class="song-link">
                        <time>04:08</time>
                        <div class="song-info">
                            <span class="sh4">自分じゃない感じ</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25330');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25330');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25329" class="song-link">
                        <time>04:00</time>
                        <div class="song-info">
                            <span class="sh4">三角の空き地</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25329');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25329');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25328" class="song-link">
                        <time>04:16</time>
                        <div class="song-info">
                            <span class="sh4">空扉</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25328');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25328');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25327" class="song-link">
                        <time>04:09</time>
                        <div class="song-info">
                            <span class="sh4">ジコチューで行こう!</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25327');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25327');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25326" class="song-link">
                        <time>04:45</time>
                        <div class="song-info">
                            <span class="sh4">あんなに好きだったのに…</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25326');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25326');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25325" class="song-link">
                        <time>04:29</time>
                        <div class="song-info">
                            <span class="sh4">地球が丸いなら</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25325');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25325');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25324" class="song-link">
                        <time>03:59</time>
                        <div class="song-info">
                            <span class="sh4">心のモノローグ</span><span class="sh5">乃木坂46</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25324');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25324');"></a>
                        </div>
                        <span class="recom-time">4天前</span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25323" class="song-link">
                        <time>02:58</time>
                        <div class="song-info">
                            <span class="sh4">グッバイ・マイ・フレンド</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25323');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25323');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25322" class="song-link">
                        <time>02:36</time>
                        <div class="song-info">
                            <span class="sh4">僕の涙 (インスト)</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25322');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25322');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25321" class="song-link">
                        <time>03:31</time>
                        <div class="song-info">
                            <span class="sh4">Arrietty's Song</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25321');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25321');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25320" class="song-link">
                        <time>02:21</time>
                        <div class="song-info">
                            <span class="sh4">あなたを決して忘れない (インスト)</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25320');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25320');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25319" class="song-link">
                        <time>02:50</time>
                        <div class="song-info">
                            <span class="sh4">グッバイ・マイ・フレンド (インスト)</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25319');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25319');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25318" class="song-link">
                        <time>02:02</time>
                        <div class="song-info">
                            <span class="sh4">大切な思い出 (インスト)</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25318');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25318');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25317" class="song-link">
                        <time>03:17</time>
                        <div class="song-info">
                            <span class="sh4">翔の歌 (インスト)</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25317');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25317');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25316" class="song-link">
                        <time>01:28</time>
                        <div class="song-info">
                            <span class="sh4">静寂の屋敷 (インスト)</span><span class="sh5">Cécile Corbel</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25316');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25316');"></a>
                        </div>
                        <span class="recom-time">6天前</span>
                        <a class="user-link" href="/u1620"><img class="am-circle index-song-avatar"
                                                                src="/User/showAvatar/uid/1620"></a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="am-u-sm-4">
            <h2>一周排行</h2>
            <ul class="recom-songs">
                <li class="recom-song">
                    <a href="/s5647" class="song-link">
                        <time>04:42</time>
                        <div class="song-info">
                            <span class="sh4">Hesitation Snow</span><span class="sh5">fripSide</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('5647');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('5647');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u30"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/30"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s6051" class="song-link">
                        <time>04:17</time>
                        <div class="song-info">
                            <span class="sh4">虹のかけら</span><span class="sh5">昆夏美</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('6051');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('6051');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u55"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/55"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s5657" class="song-link">
                        <time>05:34</time>
                        <div class="song-info">
                            <span class="sh4">ふたりだけのArk</span><span class="sh5">麻枝 准×やなぎなぎ</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('5657');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('5657');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u55"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/55"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s5382" class="song-link">
                        <time>02:43</time>
                        <div class="song-info">
                            <span class="sh4">君想う、星屑の空。</span><span class="sh5">妹尾武</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('5382');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('5382');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u55"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/55"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s9200" class="song-link">
                        <time>04:32</time>
                        <div class="song-info">
                            <span class="sh4">Yield</span><span class="sh5">Sound Horizon</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('9200');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('9200');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u90"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/90"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s5393" class="song-link">
                        <time>05:20</time>
                        <div class="song-info">
                            <span class="sh4">さよならのこと</span><span class="sh5">上原れな</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('5393');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('5393');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u942"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/942"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s8563" class="song-link">
                        <time>04:11</time>
                        <div class="song-info">
                            <span class="sh4">正義を信じて、握り締めて</span><span class="sh5">立花響(CV.悠木碧)</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('8563');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('8563');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s6375" class="song-link">
                        <time>02:12</time>
                        <div class="song-info">
                            <span class="sh4">未来を探す私の色</span><span class="sh5"></span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('6375');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('6375');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u90"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/90"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s6481" class="song-link">
                        <time>04:31</time>
                        <div class="song-info">
                            <span class="sh4">百年先も</span><span class="sh5">天誅ガールズ</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('6481');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('6481');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u55"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/55"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s3941" class="song-link">
                        <time>01:24</time>
                        <div class="song-info">
                            <span class="sh4">それは、和やかで楽しい時間</span><span class="sh5">冨田敦</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('3941');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('3941');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u90"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/90"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s10583" class="song-link">
                        <time>02:02</time>
                        <div class="song-info">
                            <span class="sh4">Hearts</span><span class="sh5">Barbarian On The Groove</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('10583');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('10583');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u90"><img class="am-circle index-song-avatar"
                                                              src="/User/showAvatar/uid/90"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25281" class="song-link">
                        <time>05:00</time>
                        <div class="song-info">
                            <span class="sh4">餞の鳥</span><span class="sh5">D/Zeal</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25281');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25281');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s24774" class="song-link">
                        <time>03:46</time>
                        <div class="song-info">
                            <span class="sh4">UNION</span><span class="sh5">OxT</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('24774');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('24774');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u118"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/118"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s792" class="song-link">
                        <time>04:12</time>
                        <div class="song-info">
                            <span class="sh4">儚くも永久のカナシ</span><span class="sh5">UVERworld</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('792');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('792');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u957"><img class="am-circle index-song-avatar"
                                                               src="/User/showAvatar/uid/957"></a>
                    </div>
                </li>
                <li class="recom-song">
                    <a href="/s25206" class="song-link">
                        <time>05:31</time>
                        <div class="song-info">
                            <span class="sh4">ONE</span><span class="sh5">Aimer</span>
                        </div>
                    </a>
                    <div class="recom-info">
                        <div class="recom-ctrl">
                            <a href="###" class="am-icon-play index-song-button" onclick="playOne('25206');"></a>
                            <a href="###" class="am-icon-plus index-song-button" onclick="addOne('25206');"></a>
                        </div>
                        <span class="recom-time"></span>
                        <a class="user-link" href="/u1"><img class="am-circle index-song-avatar"
                                                             src="/User/showAvatar/uid/1"></a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="am-u-sm-4">
            <h2>全站动态</h2>
            <ul class="index-news">
                <li class="index-new"><a class="user-link" href="/u2678"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/2678">
                    DarkDay</a> 12秒前
                    播放 <a href="/s6234">無限大クロニクル</a></li>
                <li class="index-new"><a class="user-link" href="/u1"><img class="am-circle index-song-avatar"
                                                                           src="/User/showAvatar/uid/1"> 小新喵~</a> 2分前
                    播放 <a href="/s13307">プリマステラ</a></li>
                <li class="index-new"><a class="user-link" href="/u459"><img class="am-circle index-song-avatar"
                                                                             src="/User/showAvatar/uid/459">
                    YukijiEri</a> 3分前
                    播放 <a href="/s967">猛烈宇宙交響曲・第七楽章「無限の愛」</a></li>
                <li class="index-new"><a class="user-link" href="/u940"><img class="am-circle index-song-avatar"
                                                                             src="/User/showAvatar/uid/940"> 黑帝酱</a> 3分前
                    播放 <a href="/s1142">you</a></li>
                <li class="index-new"><a class="user-link" href="/u4064"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/4064"> EuoVadis</a>
                    3分前
                    播放 <a href="/s25295">目覚めRETURNER</a></li>
                <li class="index-new"><a class="user-link" href="/u3965"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3965"> 能不能抽时间叙个旧<span
                        class="am-icon-android"
                        data-am-popover="{content: '使用 Android 客户端', trigger: 'hover focus'}"></span></a> 35分前
                    播放 <a href="/s5647">Hesitation Snow</a></li>
                <li class="index-new"><a class="user-link" href="/u3961"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3961"> 塚田咲希</a>
                    1时前
                    播放 <a href="/s23790">こいかぜ －花葉－</a></li>
                <li class="index-new"><a class="user-link" href="/u3985"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3985"> ssgm8006</a>
                    1时前
                    播放 <a href="/s23850">Melty Fantasia</a></li>
                <li class="index-new"><a class="user-link" href="/u4006"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/4006"> 千早</a>
                    2时前
                    播放 <a href="/s12549">殺人考察(後) - Ⅰ everything, not nothing</a></li>
                <li class="index-new"><a class="user-link" href="/u292"><img class="am-circle index-song-avatar"
                                                                             src="/User/showAvatar/uid/292">
                    sun_kind</a> 4时前
                    播放 <a href="/s18">Shine Days</a></li>
                <li class="index-new"><a class="user-link" href="/u3832"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3832">
                    zer0_jjh0ng</a> 4时前
                    播放 <a href="/s3282">glassware</a></li>
                <li class="index-new"><a class="user-link" href="/u3779"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3779"> IL</a>
                    4时前
                    播放 <a href="/s23640">ホップ・ステップ・ワーイ！(Guilty Kiss Ver.)</a></li>
                <li class="index-new"><a class="user-link" href="/u3139"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3139">
                    wcloli</a> 5时前
                    播放 <a href="/s20318">B.A.A.B.</a></li>
                <li class="index-new"><a class="user-link" href="/u3362"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/3362"> 幽雪笙桜</a>
                    5时前
                    播放 <a href="/s151">春隣 </a></li>
                <li class="index-new"><a class="user-link" href="/u2683"><img class="am-circle index-song-avatar"
                                                                              src="/User/showAvatar/uid/2683"> 萬物之靈</a>
                    5时前
                    播放 <a href="/s4618">月の位相</a></li>
            </ul>
        </div>
    </div>

    <style>
        .friend-img {
            width: 88px;
            height: 31px;
        }

        .friends {
            width: 100px !important;
        }
    </style>
    <div class="am-u-sm-12 am-cf">
        <h2>友情链接</h2>
        <a href="http://twitter.com/biu_moe" target="_blank" class="am-icon-btn am-secondary am-icon-twitter am-fr"></a>
        <a href="http://weibo.com/biumoe?is_all=1" target="_blank"
           class="am-icon-btn am-secondary am-icon-weibo am-fr"></a>
        <ul class="am-avg-sm-10 am-fl">
            <li class="friends"><a href="http://www.zhujike.com/" target="_blank"><img src="/Public/img/f.jpg"
                                                                                       class="friend-img" alt="主机壳"></a>
            </li>
            <li class="friends"><a href="http://www.moe123.com/" target="_blank"><img src="/Public/img/moe123.gif"
                                                                                      class="friend-img" alt="萌导航"></a>
            </li>
            <li class="friends"><a href="http://luxun.pro/" target="_blank"><img src="https://luxun.pro/88x31@2x.png"
                                                                                 class="friend-img" alt="鲁迅追番"></a></li>
            <!--li class="friends"><a href="http://www.51macf.com/" target="_blank"><img src="/Public/img/51macf.jpg" class="friend-img" alt="玛奇动漫"></a></li-->
        </ul>
    </div>

    <div class="am-u-sm-12">
        <h6>© 2018-2019 MoeSound 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
</body>
</html>
