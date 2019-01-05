<%--
  User: dreamCirno
  Date: 2019/1/6
  Time: 2:02
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
                        <li id="nav-index"><a href="/web.jsp">首页</a></li>
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
                        <li id="nav-upload"><a href="/upload.jsp">上传音乐</a></li>
                    </ul>


                    <div class="am-topbar-right">
                        <div class="am-topbar-right">
                            <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm"
                                    onclick="location.href='/login.jsp';">登录
                            </button>
                            <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm"
                                    onclick="location.href='/register.jsp';">注册
                            </button>
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
<div class="am-g am-g-fixed">
    <div class="am-u-sm-12">
        <h2 style="margin-top:0px;">动画</h2>
        <div>
            <table class="am-table am-table-hover am-table-compact am-text-truncate am-text-sm"
                   style="table-layout:fixed;">
                <thead>
                <tr>
                    <th style="width:185px;">歌曲名称</th>
                    <th style="width:100px;">歌手名称</th>
                    <th style="width:185px;">专辑名称</th>
                    <th style="width:30px;">长度</th>
                    <th style="width:30px;">管理</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="am-text-truncate"><a href="/s25330">自分じゃない感じ <span class="am-badge am-badge-secondary">256K AAC</span></a>
                    </td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>04:08</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25330');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25330);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25329">三角の空き地 <span class="am-badge am-badge-secondary">256K AAC</span></a>
                    </td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>04:00</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25329');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25329);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25328">空扉 <span
                            class="am-badge am-badge-secondary">256K AAC</span></a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>04:16</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25328');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25328);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25327">ジコチューで行こう! <span class="am-badge am-badge-secondary">256K AAC</span></a>
                    </td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>04:09</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25327');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25327);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25326">あんなに好きだったのに… <span
                            class="am-badge am-badge-secondary">256K AAC</span></a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>04:45</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25326');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25326);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25325">地球が丸いなら <span class="am-badge am-badge-secondary">256K AAC</span></a>
                    </td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>04:29</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25325');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25325);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25324">心のモノローグ <span class="am-badge am-badge-secondary">256K AAC</span></a>
                    </td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E4%B9%83%E6%9C%A8%E5%9D%8246&amp;stype=singer">乃木坂46</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E3%82%B8%E3%82%B3%E3%83%81%E3%83%A5%E3%83%BC%E3%81%A7%E8%A1%8C%E3%81%93%E3%81%86%21&amp;stype=album">ジコチューで行こう!</a>
                    </td>
                    <td>03:59</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25324');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25324);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25323">グッバイ・マイ・フレンド <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:58</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25323');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25323);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25322">僕の涙 (インスト) <span class="am-badge am-badge-secondary">无损</span></a>
                    </td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:36</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25322');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25322);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25321">Arrietty's Song <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>03:31</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25321');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25321);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25320">あなたを決して忘れない (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:21</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25320');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25320);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25319">グッバイ・マイ・フレンド (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:50</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25319');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25319);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25318">大切な思い出 (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:02</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25318');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25318);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25317">翔の歌 (インスト) <span class="am-badge am-badge-secondary">无损</span></a>
                    </td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>03:17</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25317');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25317);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25316">静寂の屋敷 (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>01:28</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25316');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25316);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25315">あなたと共に (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:38</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25315');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25315);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25314">不安な気持ち (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>03:13</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25314');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25314);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25313">翔の悲しみ (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>03:13</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25313');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25313);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25312">ザ・ワイルド・ワルツ (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>03:03</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25312');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25312);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25311">雨 (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>01:08</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25311');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25311);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25310">スピラー (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:01</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25310');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25310);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25309">翔のワルツ (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:44</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25309');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25309);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25308">荒れた庭 (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>01:14</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25308');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25308);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25307">Arrietty's Song (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>03:31</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25307');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25307);" href="###"></a></td>
                </tr>
                <tr>
                    <td class="am-text-truncate"><a href="/s25306">翔の悲しみ (インスト) <span
                            class="am-badge am-badge-secondary">无损</span></a></td>
                    <td class="am-text-truncate"><a href="/Song/search?data=C%C3%A9cile%20Corbel&amp;stype=singer">Cécile
                        Corbel</a></td>
                    <td class="am-text-truncate"><a
                            href="/Song/search?data=%E5%80%9F%E3%82%8A%E3%81%90%E3%82%89%E3%81%97%E3%81%AE%E3%82%A2%E3%83%AA%E3%82%A8%E3%83%83%E3%83%86%E3%82%A3%20%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%83%88%E3%83%A9%E3%83%83%E3%82%AF&amp;stype=album">借りぐらしのアリエッティ
                        サウンドトラック</a></td>
                    <td>02:47</td>
                    <td><a class="am-icon-play am-text-default" style="cursor:pointer;" onclick="playOne('25306');"
                           href="###"></a> <a class="am-icon-plus am-text-default" style="cursor:pointer;"
                                              onclick="addOne(25306);" href="###"></a></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div>
            <ul class="am-pagination">
                共8482首
                <li class="am-disabled"><a href="###">上一页</a></li>
                <li class="am-active"><a href="###">1</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=2">2</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=3">3</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=4">4</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=5">5</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=6">6</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=7">7</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=8">8</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=9">9</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=10">10</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=11">11</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=2">下一页</a></li>
                <li><a href="/index.php?m=&amp;c=Index&amp;a=type&amp;t=1&amp;p=340">340</a></li>
            </ul>
        </div>
    </div>
    <script>
        var typeid = location.pathname.substr(14, 15);
        $('#it' + typeid).addClass('am-active');
    </script>

    <div class="am-u-sm-12">
        <h6>© 2018-2019 MoeSound 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
</body>
</html>
