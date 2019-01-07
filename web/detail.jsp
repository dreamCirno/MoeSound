<%@ page import="com.moe.dao.MusicDao" %>
<%@ page import="com.moe.impl.MusicDaoImpl" %>
<%@ page import="com.moe.entity.Music" %>
<%@ page import="com.moe.entity.User" %><%--
  User: dreamCirno
  Date: 2019/1/6
  Time: 2:05
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
    <script>
        function playOne(src) {
            <%
                Music music  = (Music)request.getAttribute("music");
                int id = music.getId();
                MusicDaoImpl musicDao = new MusicDaoImpl();
                if(request.getSession().getAttribute("user")==null)
                {
                    musicDao.updatePlayCount(id);
                }
                else{
                    User user  = (User) request.getSession().getAttribute("user");
                   if( musicDao.updatePlayCount(id,user.getId())){
                       System.out.println("1");
                   }else{
                       System.out.println("2");
                   }
                }
            %>
            $("#myaudio", parent.document).attr('src', src);
            $("#myaudio", parent.document)[0].play();
        }
    </script>
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
                    <a href="/web.jsp">
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
                            <li id="it1"><a href="/Classify?sort=1&page=1&type=动画">动画</a></li>
                            <li id="it2"><a href="/Classify?sort=2&page=1&type=Galgame">Galgame</a></li>
                            <li id="it3"><a href="/Classify?sort=3&page=1&type=偶像">偶像</a></li>
                            <li id="it4"><a href="/Classify?sort=4&page=1&type=东方Project">东方Project</a></li>
                            <li id="it5"><a href="/Classify?sort=5&page=1&type=VOCALOID">VOCALOID</a></li>
                            <li id="it6"><a href="/Classify?sort=6&page=1&type=同人">同人</a></li>
                            <%--<li id="it7"><a href="/Index/type/t/7">纯音乐</a></li>--%>
                            <%--<li id="it0"><a href="/Index/type/t/0">未分类</a></li>--%>
                        </ul>
                    </li>

                        <li id="nav-fm"><a href="https://biu.moe/fm" target="_blank">弹幕电台</a></li>
                        <li id="nav-upload"><a href="/load.jsp">上传音乐</a></li>
                    </ul>


                    <c:if test="${empty sessionScope.user}">
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
                    </c:if>
                    <c:if test="${not empty sessionScope.user}">
                        <div class="am-topbar-right">
                            <div class="am-dropdown am-topbar-right" id="myAvatar" onmouseover="showAvatarMenu()"
                                 data-am-dropdown="">
                                <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">
                                    <img src="https://biu.moe/Public/face/9/3309.jpg" width="40" height="40"
                                         class="am-circle my-avatar">
                                </a>
                                <ul id="avatarMenu" class="am-dropdown-content">
                                    <li><i class="avatarMenuI"></i><a href="/u3309">我的主页</a></li>
                                    <li><a href="/Collect/myList">我创建的歌单</a></li>
                                    <li><a href="/Collect/myLike">我收藏的歌单</a></li>
                                    <!--li><a href="/Live/manage">直播间管理</a></li-->
                                    <li><a href="/Upload/myList">我上传的音乐</a></li>
                                    <li><a href="/User/info">个人资料管理</a></li>

                                    <li><a href="/User?action=logout">退出登录</a></li>
                                </ul>
                            </div>
                        </div>
                    </c:if>


                    <form class="am-topbar-form am-topbar-right am-form-inline" role="search" method="POST"
                          action="/Search?page=1">
                        <div class="am-form-group">
                            <input type="text" class="am-form-field am-input-sm" name="keyword" value=""
                                   placeholder="歌曲名、出处">
                        </div>
                    </form>
                </div>
            </div><!--最外围-->
        </header>
    </div>
</div>

<div class="am-g am-g-fixed">
    <style>

    </style>
    <div class="am-u-sm-9"> <!-- 左半 -->
        <div class="am-g"> <!-- 歌曲信息 -->
            <div class="am-u-sm-3 am-padding-right-0 am-margin-right-0">
                <img id="cover" style="max-width: 200px;max-height: 200px;" src="music${requestScope.music.imagePath}">
            </div>
            <div class="am-u-sm-9 am-margin-left-0 am-margin-top-0 am-padding-left-0 am-padding-top-0"
                 style="height: 200px;">
                <div class="am-text-xl">${requestScope.music.name}<span class="am-text-default"><span
                        class="am-badge am-badge-secondary">无损</span></span> <span class="am-text-xs">04:17</span></div>
                <div class="am-text-sm"><i class="am-icon-play"
                                           data-am-popover="{content: '播放次数', trigger: 'hover focus'}"></i> 382 <i
                        class="am-icon-heart" data-am-popover="{content: '收录歌单数', trigger: 'hover focus'}"></i> 4
                </div>
                <div class="am-text-lg">${requestScope.music.singer}</div>
                <div class="info-bottom">
                    <button class="am-btn am-btn-primary am-btn-sm" onclick="playOne('/music/${requestScope.music.path}');"><i
                            class="am-icon-play"></i> 播放
                    </button>
                    <a class="am-btn am-btn-primary am-btn-sm" href="https://biu.moe/fm#!6051" target="_blank"><i
                            class="am-icon-music"></i> 弹幕</a>
                    <button class="am-btn am-btn-primary am-btn-sm" onclick="addOne(6051);"><i class="am-icon-plus"></i>
                        收藏
                    </button>
                    <button class="am-btn am-btn-primary am-btn-sm" onclick="location.href='/song/edit/sid/6051'"><i
                            class="am-icon-edit"></i> 资料
                    </button>
                    <button class="am-btn am-btn-primary am-btn-sm" data-am-modal="{target: '#lrc'}"><i
                            class="am-icon-file-text-o"></i> 歌词
                    </button>
                    <button class="am-btn am-btn-primary am-btn-sm" onclick="location.href='/Upload/fix/sid/6051'"
                            data-am-popover="{content: '上传更高音质的源文件或者修复有问题的源文件', trigger: 'hover focus'}"><i
                            class="am-icon-file-sound-o"></i> 上传
                    </button>
                    <button class="am-btn am-btn-primary am-btn-sm"
                            data-am-modal="{target: '#sharebox', closeViaDimmer: 0, width: 450, height: 250}"><i
                            class="am-icon-share"></i> 分享
                    </button>
                </div>
            </div>
        </div>
        <div> <!-- 评论框 -->
            <h3>评论</h3>
            <form id="commentForm" class="am-form" method="POST" action="/Song/doComment">
                <input type="hidden" name="sid" value="6051">
                <fieldset>
                    <div class="am-form-group">
                        <textarea rows="5" style="width:790px;" id="content" placeholder="说点什么吧 =w="
                                  name="content"></textarea>
                    </div>
                    <div class="am-form-group am-margin-bottom-0">
                        <button type="submit" class="am-btn am-btn-primary">提交评论</button>
                    </div>
                </fieldset>
            </form>
            <ul class="am-comments-list am-comments-list-flip" id="comment-ul">
                <li class="am-comment ">
                    <a href="/u4074">
                        <img class="am-comment-avatar" src="/User/showAvatar/uid/4074" alt=""> <!-- 评论者头像 -->
                    </a>

                    <div class="am-comment-main"> <!-- 评论内容容器 -->
                        <header class="am-comment-hd">
                            <!--<h3 class="am-comment-title">评论标题</h3>-->
                            <div class="am-comment-meta"> <!-- 评论元数据 -->
                                <a href="/u4074" class="am-comment-author">子非鱼</a> <!-- 评论者 -->
                                <time datetime="">2019-01-04 10:24:24</time>
                            </div>
                        </header>

                        <div class="am-comment-bd">111</div> <!-- 评论内容 -->
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="am-u-sm-3 am-margin-left-0 am-margin-top-0 am-padding-left-0 am-padding-top-0"> <!-- 右半 -->
        <div class="am-text-nowrap"><!-- 分类 -->
            <h3 class="margin-top:-10px;">分类：
                <a href="/Index/type/t/1">动画</a>
            </h3>
        </div>
        <div class="am-text-nowrap"><!-- 用户资料 -->
            <div class="am-text-sm song-up-info">
                <a href="/u55"><img src="/User/showAvatar/uid/55" class="am-circle" width="36" height="36"></a>
                <span class="am-text-bottom">
            <a href="/u55"><span class="am-text-bottom">Sharuru</span></a>
             上传@很久以前        </span>
            </div>
            <div class="am-text-sm song-up-info">
                <a href="/u4073"><img src="/User/showAvatar/uid/4073" class="am-circle" width="36" height="36"></a>
                <span class="am-text-bottom">
            <a href="/u4073"><span class="am-text-bottom">saberKing</span></a>
            <a href="/Song/history/sid/6051"><span class="am-text-bottom"> 编辑@2019年01月05日 12:23</span></a>
        </span>
            </div>
            <div class="am-text-sm song-up-info">
                <img src="/Public/img/moem.jpg" width="36" height="36"><span class="am-text-bottom">系统</span>
                <span class="am-text-bottom"> 歌词@2015年12月31日 05:04</span>
            </div>
        </div> <!-- 用户资料 -->
        <div>
            <h3>包含这首歌的歌单</h3>
            <p class="include-collect"><a href="/c3554"><img src="/User/showAvatar/uid/1600" class="am-circle"
                                                             width="24" height="24"></a> <a href="/c3554"><span
                    class="am-text-bottom">亮晶晶喜欢的音乐</span></a></p>
            <p class="include-collect"><a href="/c11"><img src="/User/showAvatar/uid/1" class="am-circle" width="24"
                                                           height="24"></a> <a href="/c11"><span class="am-text-bottom">小新喵~喜欢的音乐</span></a>
            </p>
            <p class="include-collect"><a href="/c576"><img src="/User/showAvatar/uid/292" class="am-circle" width="24"
                                                            height="24"></a> <a href="/c576"><span
                    class="am-text-bottom">OP/ED</span></a></p>
            <p class="include-collect"><a href="/c8676"><img src="/User/showAvatar/uid/4024" class="am-circle"
                                                             width="24" height="24"></a> <a href="/c8676"><span
                    class="am-text-bottom">俄方风格喜欢的音乐</span></a></p></div>
    </div>

    <div class="am-popup" id="lrc">
        <div class="am-popup-inner">
            <div class="am-popup-hd">
                <h4 class="am-popup-title">虹のかけら - 歌词</h4>
                <span data-am-modal-close="" class="am-close">×</span>
            </div>
            <div class="am-popup-bd">
                <button class="am-btn am-btn-primary am-btn-sm" onclick="location.href='/Song/editLrc/sid/6051'"><i
                        class="am-icon-edit"></i> 编辑歌词
                </button>
                <br>
                [ti:虹のかけら]<br>[ar:昆夏美]<br>[al:虹のかけら]<br>[00:00.30]虹のかけら<br>[00:01.38]TVアニメ『一週間フレンズ。』オープニングテーマ<br>[00:02.84]<br>[00:04.45]作詞：川嶋あい<br>[00:05.41]作曲：川嶋あい<br>[00:06.36]編曲：宮崎誠<br>[00:07.46]<br>[00:08.45]明日もこうして
                君のそばにいて 同じ時を過ごしていたいな<br>[00:23.14]ゆっくりぺージを めくるようにまた増やしてゆこう 君とのしるし<br>[00:35.91]<br>[00:36.44]言葉にできないこと押し寄せてきても
                大丈夫 こわがらなくていいよ<br>[00:49.84]<br>[00:50.98]君を連れ去りにゆくよ 果てしないあの空へと<br>[00:58.43]感じるままに描こう 明日という虹の橋を<br>[01:05.71]君が落とした忘れ物
                僕がきっと探し出すよ<br>[01:13.02]何度でも会いたいから 大切な輝く笑顔に<br>[01:22.94]<br>[01:28.54]失くしたものたち数えるよりも 今ここにあるものを信じて<br>[01:41.94]考えすぎたってきっとダメになるばかり
                不器用な翼でも飛べるよ<br>[01:55.55]<br>[01:56.47]君と走り出したいよ どこまでも続く道を<br>[02:03.86]遠回りばかりじゃない ゆっくり前に進んでいる<br>[02:11.20]こぼれた時のしずくが心に流れ落ちたら
                君はもう一人じやない<br>[02:21.50]いつだって僕がいるからね<br>[02:28.42]<br>[02:29.02]もしも君がつらい時は 僕が雲の隙間から顔出す太陽のように照らしたい<br>[02:43.47]だからどんなときもずっと
                見逃したりはしないよ<br>[02:51.07]過ぎ去るこの一瞬の全てを<br>[03:02.74]<br>[03:13.38]雨降り空でも明日になれば 風は止み陽はまた昇っていく<br>[03:26.61]<br>[03:27.74]君と刻んでいきたい
                これから始まる日々を<br>[03:34.81]心にフタをしないで あるがまま歩いていこう<br>[03:42.12]繰り返す日々の中で 見つけてゆく宝物<br>[03:49.43]いつの日も胸に抱いて
                大切な輝く笑顔に<br>[03:59.13]<br>[04:00.28]何度でも会いに行くよ<br>[04:07.35]<br>[04:13.32]Lyrics Contents Copyright
                Reserved for O.L.W.<br>[04:14.85]<br>[04:15.42]終わり<br>[04:16.08]<br></div>
        </div>
    </div>

    <div class="am-modal am-modal-no-btn" tabindex="-1" id="sharebox">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">Iframe 分享到外部网站
                <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a>
            </div>
            <div class="am-modal-bd">
                <input type="text" readonly="" class="am-form-field"
                       value="<iframe src=&quot;http://biu.moe/Api/shareBox?sid=6051&amp;autoPlay=0&quot; frameborder=&quot;0&quot; height=&quot;50&quot;></iframe>">
                <p>
                    ※ 宽度自适应，autoPlay 参数可设置是否自动播放<br>※ 目前只支持 HTTP 引用
                </p>
                <hr>
                <a class="am-btn am-btn-primary am-btn-sm" target="_blank" href="/Api/appShare/sid/6051"><i
                        class="am-icon-weibo"></i> 分享到微博</a>
            </div>
        </div>
    </div>
    <!--div data-role="dialog" id="shareBox" class="padding10" data-close-button="true">
        <h2>外链代码</h2>
            <div class="input-control text full-size">
                <label></label>
                <input type="text" readonly="" value='<iframe src="http://biu.moe/Api/shareBox?sid=6051&autoPlay=0" frameborder="0" height="50"></iframe>'>
            </div>
        <p>
            ※ 宽度自适应，autoPlay 参数可设置是否自动播放。目前只支持 HTTP 引用
        </p>
    </div-->

    <div class="am-u-sm-12">
        <h6>© 2018-2019 MoeSound 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
</body>
</html>
