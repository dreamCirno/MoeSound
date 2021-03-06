<%--
  User: dreamCirno
  Date: 2019/1/8
  Time: 14:05
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
    <header class="am-topbar am-topbar-inverse" data-am-sticky="{animation: 'slide-top'}" style="margin: 0px;">
        <div class="am-center topbar">
            <h1 class="am-topbar-brand">
                <a href="/web.jsp">
                    <svg style="fill:#FFF;width:100px;height:45px;margin-top:2px;" xmlns="http://www.w3.org/2000/svg"
                         viewBox="0 0 89.67 45">
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
                            <li id="it1"><a href="/Classify?sort=1&page=1">动画</a></li>
                            <li id="it2"><a href="/Classify?sort=2&page=1">Galgame</a></li>
                            <li id="it3"><a href="/Classify?sort=3&page=1">偶像</a></li>
                            <li id="it4"><a href="/Classify?sort=4&page=1">东方Project</a></li>
                            <li id="it5"><a href="/Classify?sort=5&page=1">VOCALOID</a></li>
                            <li id="it6"><a href="/Classify?sort=6&page=1">同人</a></li>
                            <%--<li id="it7"><a href="/Index/type/t/7">纯音乐</a></li>--%>
                            <%--<li id="it0"><a href="/Index/type/t/0">未分类</a></li>--%>
                        </ul>
                    </li>

                    <!--<li id="nav-fm"><a href="https://biu.moe/fm" target="_blank">弹幕电台</a></li>-->
                    <li id="nav-upload"><a href="/load.jsp">上传音乐</a></li>
                    <c:if test="${sessionScope.user.grade<1}">
                        <li><a href="/User?action=usermanage">用户管理</a></li>
                    </c:if>
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
                                <li><i class="avatarMenuI"></i><a
                                        href="/User?action=userdetail&id=${sessionScope.user.id}">我的主页</a></li>
                                <li><a href="/List?action=select&list=${sessionScope.user.id}">我喜欢的音乐</a></li>
                                    <%--<li><a href="/Collect/myLike">我收藏的歌单</a></li>--%>
                                <!--li><a href="/Live/manage">直播间管理</a></li-->
                                    <%--<li><a href="/Upload/myList">我上传的音乐</a></li>--%>
                                <li><a href="/User?action=selectInfo&userId=${sessionScope.user.id}">个人资料管理</a></li>

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
<div class="am-g am-g-fixed">
    <div class="am-u-sm-12">
        <h2 style="margin-top:0px;">我创建的歌单</h2>
        <div>
            <table class="am-table">
                <thead>
                <tr>
                    <th style="width:50px;">收藏</th>
                    <th>歌单名称</th>
                    <th>创建时间</th>
                    <th>最后修改</th>
                    <th>管理</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="radio" name="nowcollect" onclick="changeCollect('0');" value="0" checked=""></td>
                    <td><a href="/c7162">我喜欢的音乐</a></td>
                    <td>2017年12月11日 00:36:43</td>
                    <td>2019年01月02日 19:30:03</td>
                    <td>
                        <button class="am-btn am-round am-btn-primary am-btn-sm" onclick="location.href='/c7162';"><span
                                class="am-icon-wrench"></span> 管理
                        </button>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="/c7163">电台不再播放</a></td>
                    <td>2017年12月11日 00:36:43</td>
                    <td>2017年12月11日 00:36:43</td>
                    <td>
                        <button class="am-btn am-round am-btn-primary am-btn-sm" onclick="location.href='/c7163';"><span
                                class="am-icon-wrench"></span> 管理
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div>
            ※ 2016年1月起用新的收藏模式，本页选择收藏歌单后，在网页中点击+或者播放列表点击收藏全部，将会直接进入对应的歌单<br>
            ※ 《我喜欢的音乐》和《电台不再播放》由系统自动创建，用户不可删除
            <hr>
        </div>
        <div class="am-u-sm-6">
            <form action="/Collect/createCollect" class="am-form" method="POST" id="biuform">
                <fieldset>
                    <legend>新建歌单</legend>
                    <div class="am-form-group">
                        <label for="title">新歌单名称：</label>
                        <input type="text" id="title" name="title">
                    </div>
                    <div class="am-form-group">
                        <label for="image">封面（尽量正方形大于200x200）：</label>
                        <input type="file" id="image" name="image">
                    </div>
                    <div class="am-form-group">
                        <label for="remark">备注（限制500字）：</label>
                        <textarea id="remark" name="remark"></textarea>
                    </div>
                    <input type="submit" value="新建歌单" class="am-btn am-round am-btn-primary" id="dosubmit">
                </fieldset>
            </form>
        </div>
    </div>
    <!--div class="grid" style="margin:0 0;">
        <div class="row cells1">
            <div class="cell colspan1">
                <h2>我创建的歌单</h2>
            </div>
            <div class="cell colspan1">
                <table class="table hovered">
                    <thead>
                    <tr>
                    <th>收藏</th>
                    <th>歌单名称</th>
                    <th>创建时间</th>
                    <th>最后修改</th>
                    <th>管理</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="width:65px;"><input type="radio" name="nowcollect" onclick="changeCollect('0');" value="0" checked></td>
                            <td style=""><a href="/c7162">我喜欢的音乐</a></td>
                            <td style="">2017年12月11日 00:36:43</td>
                            <td style="">2019年01月02日 19:30:03</td>
                            <td style=""><button class="button primary" onclick="location.href='/c7162';"><span class="mif-wrench"></span> 管理</button></td>
                        </tr>
                                        <tr>
                            <td style=""></td>
                            <td style=""><a href="/c7163">电台不再播放</a></td>
                            <td style="">2017年12月11日 00:36:43</td>
                            <td style="">2017年12月11日 00:36:43</td>
                            <td style=""><button class="button primary" onclick="location.href='/c7163';"><span class="mif-wrench"></span> 管理</button></td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <div class="cell colspan1">
                ※ 2016年1月起用新的收藏模式，本页选择收藏歌单后，在网页中点击+或者播放列表点击收藏全部，将会直接进入对应的歌单<br>
                ※ 《我喜欢的音乐》和《电台不再播放》由系统自动创建，用户不可删除<br><br>
                新歌单名称：<br>
                <form action="/Collect/createCollect" method="POST" id="biuform">
                <div class="input-control text" style="width:300px;">
                    <input type="text" name="title">
                </div><br>备注：<br>
                <div class="input-control textarea" style="width:600px;">
                    <textarea name="remark"></textarea>
                </div><br>
                <input type="submit" value="新建歌单" class="button primary" id="dosubmit">
                </form>
            </div>
        </div>
    </div-->
    <script>
        function changeCollect(lid) {
            $.get('/Collect/changeNowCollect/lid/' + lid, function (ob) {
                if (ob == '1') {
                    showNotice('成功', '收藏歌单已切换', 'success');
                } else {
                    showNotice('失败', '请刷新重试', 'alert');
                }
            });
        }

        function delCollect(lid, title) {
            if (confirm('确认删除歌单' + title + '？'))
                location.href = '/Collect/deleteCollect/lid/' + lid;
        }

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
                        showNotice('成功', '歌单已创建', 'success');
                        setTimeout("location.reload();", 2000);
                    } else if (ob.status == false) {
                        showNotice('失败', ob.error, 'alert');
                        $('#dosubmit').attr('disabled', false);
                        $('#dosubmit').attr('value', '保存修改');
                    }
                    return false;
                },
                error: function (ob, errStr) {
                    showNotice('失败', '网络错误请重试', 'alert');
                    $('#dosubmit').attr('disabled', false);
                    $('#dosubmit').attr('value', '新建歌单');
                    return false;
                }
            }
        });
    </script>

    <div class="am-u-sm-12">
        <h6>© 2018-2019 MoeSound 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
    </div>

</div>
</body>
</html>
