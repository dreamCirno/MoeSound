<%--
  User: dreamCirno
  Date: 2019/1/5
  Time: 16:41
--%>
<%--
  User: dreamCirno
  Date: 2019/1/3
  Time: 23:13
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
    <link href="/static/css/app.7ff607468a9edb1eb7c284c4adb32ced.css" rel="stylesheet">
</head>
<body>
<html class="js cssanimations">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Biu.Moe 分享高音质ACG音乐">
    <meta name="keywords" content="Biu,Moe,ACG,无损,音乐,FLAC,高音质">
    <title>Biu.Moe 分享高音质ACG音乐</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">


    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp">

    <link rel="stylesheet" href="//web.biu.moe/Public/v2/css/amazeui.min.css">
    <link rel="stylesheet" href="//web.biu.moe/Public/v2/css/app.css?2">
    <link rel="stylesheet" href="//web.biu.moe/Public/v2/css/animation.css">
    <script type="text/javascript" async="" defer="" src="//yui-ssl.smartgslb.com/yui.js"></script>
    <script type="text/javascript">
        var _paq = _paq || [];
        _paq.push(["setCookieDomain", "*.biu.moe"]);
        _paq.push(["setDomains", ["*.biu.moe"]]);
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function () {
            var u = "//yui-ssl.smartgslb.com/";
            _paq.push(['setTrackerUrl', u + 'yui.php']);
            _paq.push(['setSiteId', '2']);
            var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
            g.type = 'text/javascript';
            g.async = true;
            g.defer = true;
            g.src = u + 'yui.js';
            s.parentNode.insertBefore(g, s);
        })();
    </script>
    <script src="//web.biu.moe/Public/v2/js/jquery.min.js"></script>
    <script src="//web.biu.moe/Public/v2/js/amazeui.min.js"></script>
    <script src="//web.biu.moe/Public/v2/js/jquery.form.min.js"></script>
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
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器。 请 <a
        href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->
<div class="am-sticky-placeholder" style="height: 51px; margin: 0px 0px 19.2px;">
    <header class="am-topbar am-topbar-inverse" data-am-sticky="{animation: 'slide-top'}" style="margin: 0px;">
        <div class="am-center topbar">
            <h1 class="am-topbar-brand">
                <a href="/Index/home">
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
                    <li id="nav-upload" class="am-active"><a href="/Upload">上传音乐</a></li>
                </ul>


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
                            <li><a href="/Message/index">私信</a></li>
                            <li><a href="/User/logout">退出登录</a></li>
                        </ul>
                    </div>
                </div>


                <form class="am-topbar-form am-topbar-right am-form-inline" role="search" method="GET"
                      action="/Song/search">
                    <div class="am-form-group">
                        <input type="text" class="am-form-field am-input-sm" name="data" value="" placeholder="歌曲名、出处">
                    </div>
                </form>
            </div>
        </div><!--最外围-->
    </header>
</div>

<div class="am-g am-g-fixed">
    <script src="//web.biu.moe/Public/v2/js/spark-md5.min.js"></script>
    <script src="//web.biu.moe/Public/v2/js/amazeui.min.js"></script>
    <script src="//web.biu.moe/Public/v2/js/aurora.js"></script>
    <script src="//web.biu.moe/Public/v2/js/mp3.js"></script>
    <script src="//web.biu.moe/Public/v2/js/alac.js"></script>
    <script src="//web.biu.moe/Public/v2/js/flac.js"></script>
    <script src="//web.biu.moe/Public/v2/js/aac.js"></script>
    <style>
        #drop_area {
            width: 100%;
            height: 100px;
            border: 3px dashed silver;
            line-height: 100px;
            text-align: center;
            font-size: 36px;
            color: #d3d3d3
        }

        .input-control {
            width: 500px;
        }
    </style>
    <div class="am-u-sm-12">
        <ul>
            <li>现已支持 Hi-Res！上传将会自动添加<img src="/Public/img/hires.jpg" width="35" height="35" style="margin-top: -10px;">标记。仅支持48/96k
                24/32bit，不支持 192k 采样因为播放歌曲要 700KB/s 太可怕_(:з」∠)_
            </li>
            <li>本站仅接受 ACG （G=Galgame）相关的已发售 CD、同人歌曲，较流行的优质二次创作歌曲也可上传（如毛毛虫调教的洛天依）</li>
            <li>本页内置有 ID3 提取，选择文件后可自动分析标题、歌手、专辑名信息。此功能仅支持 FLAC、AAC、MP3</li>
            <li>本站支持 FLAC、APE、WAV、TTA、TAK、ALAC 格式的无损格式，单文件限制最大 512 MB</li>
            <li>不支持 DSD 和经过重采样降下采样率的文件</li>
            <li>有损格式仅支持 MP3 和 AAC，MP3 码率必需是 320K，AAC 码率至少 256K</li>
            <li>码率不足的 MP3 网页会自动拒绝，AAC 网页无法获取码率，上传后由服务器判断是否合格</li>
            <li>所有无损格式自动转为 FLAC（压缩等级8） 用于客户端播放，同时转换一份 AAC 用于网页版播放</li>
            <li>通常歌曲信息编码都是 UTF-8，如果通过 QQ 音乐等渠道下载 MP3 会得到 GBK 编码的文件，需要手工填写正确的歌曲信息</li>
            <li>系统会自动尝试从网络抓取封面，如果自动抓取失败，可在审核通过后编辑歌曲手工修改封面</li>
            <li><b>新番音乐的 OP、ED 必需在备注中写明，格式为中文名 英文名（如果有的话） OP（或者ED），用空格隔开，例如：夏洛特 Charlotte OP</b></li>
            <li><b>已经存在的歌曲如果音质不是无损，请到歌曲对应页面进行上传修复。不要通过本页上传！系统会自动进行撞车判断，请仔细查看提示</b></li>
            <li>上传界面支持多选文件啦！如果出现上传卡住，可尝试取消卡住的上传任务。UP主 QQ 交流群 318148182</li>
            <li>Chrome 或国产 Chromium 内核浏览器推荐使用『<a
                    href="https://chrome.google.com/webstore/detail/biuhelper/dhhhihdpmpfkaogilimpdifmlinchjbl"
                    target="_blank">BiuHelper</a>』扩展上传，开发者 <a href="/u840">Ted Zyzsdy</a>，支持大文件断点续传！
            </li>
        </ul>
    </div>
    <div class="am-u-sm-12">
        <div class="am-form-file" id="drop_area">
            拖放歌曲源文件到这里或者点击选择文件
            <input name="file" type="file" id="file" multiple="">
        </div>
        <!--h1>被攻击期间暂时不能上传和审核歌曲</h1-->
        <hr>
        <div id="info1" style="display:none;">
        </div>
        <div id="info11" style="display:none;">
            <br>
            <i class="am-icon-spinner am-icon-pulse"></i> ID3 和 MD5 分析中，请稍候
        </div>
        <div id="info2" style="display:none;">
            <fieldset>
                <div class="am-form-group">
                    文件名：
                    <div class="input-control text" data-role="input">
                        <span id="nowfile"></span>
                    </div>
                </div>
                <div class="am-form-group">
                    歌曲名：
                    <div class="input-control text" data-role="input">
                        <input type="text" class="input-control" name="title" id="title">
                    </div>
                </div>
                <div class="am-form-group">
                    歌手：
                    <div class="input-control text" data-role="input">
                        <input type="text" class="input-control" name="singer" id="singer">
                    </div>
                </div>
                <div class="am-form-group">
                    专辑名：
                    <div class="input-control text" data-role="input">
                        <input type="text" name="album" class="input-control" id="album">
                    </div>
                </div>
                <div class="am-form-group">
                    备注（发售日期、所属作品等）：<br>
                    <div class="input-control text" data-role="input">
                        <input type="text" class="input-control" name="remark" id="remark">
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="month">分类</label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type1" value="1" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 动画
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type1" value="2" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> Galgame
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type1" value="3" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 偶像
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type1" value="4" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 东方Project
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type1" value="5" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> VOCALOID
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type1" value="6" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 同人（MAD用曲和其它）
                    </label>
                </div>
                <div class="am-form-group">
                    <label for="month">类型</label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type2" value="1" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 原唱
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type2" value="2" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 伴奏
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type2" value="3" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 纯音乐
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type2" value="4" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 翻唱
                    </label>
                    <label class="am-radio-inline">
                        <input type="radio" name="type2" value="5" data-am-ucheck="" class="am-ucheck-radio"><span
                            class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i
                            class="am-icon-checked"></i></span> 其它（Freetalk、广播剧等）
                    </label>
                </div>
                <input type="hidden" id="lid">
                <input type="hidden" id="md5" name="md5">
                <div id="existlist"></div>
                <p><input type="button" class="am-btn am-btn-primary" id="addbutton" onclick="addList();"
                          value="添加到上传队列"> <input type="button" class="am-btn am-btn-primary" id="addbutton"
                                                  onclick="checkLoadInfoQueue();" value="跳过此文件，继续下一首"></p>
            </fieldset>
        </div>
        <hr>
        <!--第二部分-->
        <div>
            <table class="am-table am-table-hover am-table-compact am-text-truncate am-text-sm">
                <thead>
                <tr>
                    <th>文件名称</th>
                    <th>状态</th>
                    <th>上传进度</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody id="uptbody">
                </tbody>
            </table>
        </div>
    </div>
    <script>
        function Error(e) {
            this.errstr = e || 'none';
        }

        var theav, i = 0, uplist = [], md5list = [], file, lid = 0, uploading = 0, lastw, lastt, uploadid = 0, xhr,
            token = [], forceupload = '0', inputInfoQueue = [], metaInfo = {}, loadInfoQueue = [];
        $(function () {
            $(document).on({
                dragleave: function (e) {
                    e.preventDefault();
                },
                drop: function (e) {
                    e.preventDefault();
                },
                dragenter: function (e) {
                    e.preventDefault();
                },
                dragover: function (e) {
                    e.preventDefault();
                }
            });
            var box = document.getElementById('drop_area'); //拖拽区域
            box.addEventListener("drop", function (e) {
                e.preventDefault(); //取消默认浏览器拖拽效果
                var fileList = e.dataTransfer.files; //获取文件对象
                //检测是否是拖拽文件到页面的操作
                if (fileList.length == 0) {
                    return false;
                }
                //fileList就是文件列表
                pushFiles(fileList);
            }, false);
        });
        document.getElementById("file").addEventListener("change", function () {
            var fileList = document.getElementById("file").files;
            pushFiles(fileList);
        });
        var md5 = function md5(file) {
            return new Promise(function (resolve, reject) {
                //MD5计算
                var blobSlice = File.prototype.slice || File.prototype.mozSlice || File.prototype.webkitSlice;
                var chunkSize = 2097152;
                var chunks = Math.ceil(file.size / chunkSize);
                var currentChunk = 0;
                var spark = new SparkMD5.ArrayBuffer();
                var fileReader = new FileReader();
                fileReader.onload = function (e) {
                    spark.append(e.target.result);
                    currentChunk++;
                    if (currentChunk < chunks) {
                        loadNext();
                    } else {
                        console.timeEnd('MD5计算');
                        var rightmd5 = spark.end();
                        $('#info1').append(' MD5：' + rightmd5);
                        //$('#load-file .progress-bar').width($('#load-file .progress-bar').width() === 0 ? '50%' : '100%');
                        resolve(rightmd5);
                    }
                };
                fileReader.onerror = function () {
                    console.warn('MD5计算出错');
                };

                function loadNext() {
                    var start = currentChunk * chunkSize,
                        end = start + chunkSize >= file.size ? file.size : start + chunkSize;
                    fileReader.readAsArrayBuffer(blobSlice.call(file, start, end));
                }

                console.time('MD5计算');
                loadNext();
            });
        };
        var loadMetaInfo = function loadMetaInfo(file) {
            return new Promise(function (resolve, reject) {
                var object = new AV.Asset.fromFile(file);
                object.on('buffer', function (percent) {
                    if (percent === 100) {
                        console.timeEnd('获取信息用时');
                        resolve(); // 无论有没有读到信息 读到尾了都返回
                    }
                });
                var info = {};
                var promises = ['format', 'metadata'].map(function (i) {
                    return new Promise(function (resolve, reject) {
                        try {
                            object.once(i, function (data) {
                                info[i] = data;
                                resolve();
                            });
                        } catch (err) {
                            reject(err);
                        }
                    }).catch(function (err) {
                        console.log(err);
                        resolve(false);
                    });
                });
                console.time('获取信息用时');
                Promise.all(promises).then(function () {
                    console.timeEnd('获取信息用时');
                    object.stop();
                    //loadedInfoPile.push(file);
                    resolve(info);
                }).catch(function (err) {
                    console.log(err);
                    resolve(false);
                });
                object.start();
            });
        };
        var pushFiles = function (fileList) {
            inputInfoQueue = [];
            for (var fileid = 0; fileid < fileList.length; fileid++) {
                // 有无效的 可遍历的项 故此处不用for in
                loadInfoQueue.push(fileList[fileid]);
            }
            checkLoadInfoQueue(); //文件列表读入完成，交给checkLoadInfoQueue填写文件信息
        }

        function checkLoadInfoQueue() {
            forceupload = '0';
            if (loadInfoQueue.length > 0) {
                $('#info1').html('<i class="am-icon-spinner am-icon-pulse"></i> MD5 分析中');
                $('#info1').slideDown();
                $('#info11').html('<i class="am-icon-spinner am-icon-pulse"></i> ID3 分析中');
                //$('#info11').slideDown();
                $('#info2').slideUp();
                $('#existlist').html('');
                $('#addbutton').attr('value', '添加到上传队列');
                var thisfile = loadInfoQueue.shift();
                file = thisfile; //把文件转交给全局
                console.log('Now Processing: ' + file.name);
                var fileReader = new FileReader();
                blobSlice = File.prototype.mozSlice || File.prototype.webkitSlice || File.prototype.slice,
                    chunkSize = 2097152,
                    chunks = Math.ceil(file.size / chunkSize),
                    currentChunk = 0,
                    spark = new SparkMD5();

                fileReader.onload = function (e) {
                    console.log("读取文件", currentChunk + 1, "/", chunks);
                    spark.appendBinary(e.target.result);
                    currentChunk++;

                    if (currentChunk < chunks) {
                        loadNext();
                    } else {
                        try {
                            go2(file);
                        } catch (err) {
                            console.log(err);
                            $('#info2').slideDown();
                            setTimeout(getid3, 2000, theav);
                        }
                        var rightmd5 = spark.end();
                        console.info("计算的Hash", rightmd5);
                        $('#info1').html('MD5：' + rightmd5);
                        $('#info11').slideDown();
                        $('#md5').attr('value', rightmd5);
                        $('#lid').attr('value', uplist.length);
                    }
                };

                function loadNext() {
                    var start = currentChunk * chunkSize,
                        end = start + chunkSize >= file.size ? file.size : start + chunkSize;
                    fileReader.readAsBinaryString(blobSlice.call(file, start, end));
                }

                loadNext();
                /*
                Promise.all([md5(thisfile), loadMetaInfo(thisfile)]).then(function (data) {
                    var filemd5 = data[0];
                    var metainfo = data[1];
                    console.log(metainfo);
                    $('#md5').attr('value',filemd5);
                    $('#lid').attr('value',uplist.length);
                    //资料获取完毕，用户填写资料
                    if(!metainfo)
                    {
                        console.log('Decode faild');
                        $('#info11').slideUp();
                        $('#info2').slideDown();
                    }else if(metainfo.format.formatID=='mp3' && metainfo.format.bitrate < 300000)
                    {
                        $('#info1').slideUp();
                        $('#info11').slideUp();
                        $('#info2').slideUp();
                        showNotice(file.name+' 文件码率不合格', '请选择高音质 MP3 的文件','alert');
                    }else{
                        //有ID3的情况
                        try{
                            $('#info11').slideUp();
                            $('#title').attr('value',metainfo.metadata.title);
                            $('#singer').attr('value',metainfo.metadata.artist);
                            $('#album').attr('value',metainfo.metadata.album);
                            $('#info2').slideDown();
                            if(metainfo.format.formatID)
                                $('#info1').append(' 格式：'+metainfo.format.formatID);
                            if(metainfo.format.bitrate)
                                $('#info1').append(' 码率：'+(metainfo.format.bitrate / 1000));
                        }catch(err){
                            $('#info11').slideUp();
                            console.log(err);
                            $('#info2').slideDown();
                        }
                    }
                    $('#nowfile').text(file.name);
                }).catch(function(err){
                    $('#info11').slideUp();
                    console.log(err);
                    $('#info2').slideDown();
                    $('#nowfile').text(file.name);
                });*/
            } else {
                $('#info2').slideUp();
                $('#info1').slideUp();
                $('#info11').slideUp();
            }
        }

        function go2(file) {
            $('#nowfile').text(file.name);
            try {
                theav = new AV.Asset.fromFile(file);
                theav.start();
                setTimeout("if(theav.decoder!=null)        {            theav.get('format',function(ob){                if(!ob.formatID)                {                    console.log('aa');                    $('#info11').slideUp();                    $('#info2').slideDown();                }                if(ob.formatID)                    $('#info1').append(' 格式：'+ob.formatID+' ');                if(ob.bitrate)                    $('#info1').append('码率：'+(ob.bitrate / 1000));                if(ob.formatID=='mp3' && ob.bitrate < 300000)                {                    $('#info1').slideUp();                    $('#info11').slideUp();                    $('#info2').slideUp();                    showNotice('码率不合格', '请选择高音质 MP3 的文件','alert');                }else{                    $('#info11').slideDown();                    setTimeout(getid3,5000,theav);                }            });        }else{            $('#info11').slideUp();            $('#info2').slideDown();        }", 2000);
                /*
                if(theav.decoder!=null)
                {
                    theav.get('format',function(ob){
                        if(!ob.formatID)
                        {
                            console.log('aa');
                            $('#info11').slideUp();
                            $('#info2').slideDown();
                        }
                        if(ob.formatID)
                            $('#info1').append(' 格式：'+ob.formatID+' ');
                        if(ob.bitrate)
                            $('#info1').append('码率：'+(ob.bitrate / 1000));
                        if(ob.formatID=='mp3' && ob.bitrate < 300000)
                        {
                            $('#info1').slideUp();
                            $('#info11').slideUp();
                            $('#info2').slideUp();
                            $.Notify({
                                caption: '码率不合格',
                                content: '请选择高音质 MP3 的文件',
                                type: 'alert'
                            });
                        }else{
                            $('#info11').slideDown();
                            setTimeout(getid3,5000,theav);
                        }
                    });
                }else{
                    $('#info11').slideUp();
                    $('#info2').slideDown();
                }*/
            } catch (err) {
                console.log(err);
                $('#info11').slideUp();
                $('#info2').slideDown();
            }
            $('#info11').slideUp();
        }

        function getid3(theav) {
            try {
                $('#info11').slideUp();
                $('#title').attr('value', theav.metadata.title);
                $('#singer').attr('value', theav.metadata.artist);
                $('#album').attr('value', theav.metadata.album);
                $('#info2').slideDown();
            } catch (err) {
                $('#info11').slideUp();
                console.log(err);
                $('#info2').slideDown();
            }
        }

        var addList = function () {
            $('#addbutton').attr('diabled', true);
            $('#addbutton').attr('value', '正在提交');
            var rlid = $('#lid').val();
            var wtitle = $('#title').val();
            var wsinger = $('#singer').val();
            var walbum = $('#album').val();
            var wremark = $('#remark').val();
            var wmd5 = $('#md5').val();
            var changestr = 0;
            var wtype1 = $("input[name='type1']:checked").val();
            var wtype2 = $("input[name='type2']:checked").val();
            $.post('/Upload/addmd5v2', {
                title: wtitle,
                singer: wsinger,
                album: walbum,
                md5: wmd5,
                remark: wremark,
                force: forceupload,
                type1: wtype1,
                type2: wtype2
            }, function (ob) {
                if (ob.status == true) {
                    uplist[rlid] = file;
                    console.log(uplist);
                    md5list[rlid] = wmd5;
                    console.log(md5list);
                    token[rlid] = ob.token;
                    forceupload = '0';
                    $('#uptbody').prepend('<tr id="tr' + rlid + '"><td>' + file.name + '</td><td id="i' + rlid + 'status">已经添加到队列</td><td id="i' + rlid + 'process">0%</td><td><button class="am-btn am-btn-primary am-btn-xs" onclick="delfile(\'' + rlid + '\')">取消上传</button></td></tr>');
                    $('#info1').slideUp();
                    $('#info11').slideUp();
                    $('#info2').slideUp();
                    if (uploading == 0) {
                        upNext();
                    }
                    checkLoadInfoQueue();
                } else {
                    if (ob.status == false) {
                        if (ob.result) {
                            showNotice(file.name + ' 疑似撞车', '请确认是否撞车', 'warning');
                            var listhtml = '<table class="am-table am-table-hover am-table-compact am-text-truncate am-text-sm"><thead><tr><th>歌曲名</th><th>歌手</th><th>专辑名</th><th>撞车可能性</th><th>播放</th></tr></thead><tbody>';
                            for (i = 0; i < ob.result.length; i++) {
                                if (ob.result[i]['level'] == '1')
                                    leveltag = '<span class="am-badge am-badge-secondary">无损</span>';
                                else if (ob.result[i]['level'] == '2')
                                    leveltag = '<span class="am-badge am-badge-secondary">256K AAC</span>';
                                else if (ob.result[i]['level'] == '3')
                                    leveltag = '<span class="am-badge am-badge-warning">320K MP3</span>';
                                else if (ob.result[i]['level'] == '4')
                                    leveltag = '<span class="am-badge am-badge-warning">渣音质 MP3</span>';
                                listhtml += '<tr><td class="am-text-truncate"><a href="https://biu.moe/#s' + ob.result[i]['sid'] + '" target="_blank">' + ob.result[i]['title'] + '</a> ' + leveltag + '</td><td class="am-text-truncate">' + ob.result[i]['singer'] + '</td><td class="am-text-truncate">' + ob.result[i]['album'] + '</td><td>' + ob.result[i]['score'] + '</td><td><span class="am-icon-play" style="cursor:pointer;" onclick="playOne(\'' + ob.result[i]['sid'] + '\');"></span></td></tr>';
                            }
                            listhtml += '</tbody></table><br>※ 请试听确认是否撞车。如果已存在而且音质不是无损，请点击歌曲标题进入对应页面进行替换<br><input type="hidden" name="force" value="1">';
                            $('#existlist').html(listhtml);
                            changestr = 1;
                            forceupload = 1;
                        } else {
                            showNotice('资料保存失败', ob.error, 'alert');
                            if (ob.error == '服务器存在该文件')
                                checkLoadInfoQueue(); //继续下一个。。。
                        }
                    } else {
                        showNotice('资料保存失败', '网络错误', 'alert');
                    }
                }
                $('#addbutton').attr('diabled', false);
                if (changestr == 0)
                    $('#addbutton').attr('value', '添加到上传队列');
                else
                    $('#addbutton').attr('value', '确认没有重复，添加文件到上传队列');
            });
        }

        var delfile = function (rlid) {
            if (rlid == uploadid) {
                xhr.abort();
                upNext();
            }
            delete uplist[rlid];
            $('#tr' + rlid).fadeOut();
        }

        var upNext = function () {
            var newed = 0;
            $.each(uplist, function (k, v) {
                if (v != undefined && newed == 0) {
                    xhr = new XMLHttpRequest();
                    var formData = new FormData();
                    lastw = 0;
                    console.log('kkk:' + k);
                    xhr.upload.onprogress = function (event) {
                        if (event.lengthComputable) {
                            var nowt = new Date().getTime();
                            var tfix = nowt - lastt;
                            tfix = tfix / 1000;
                            lastt = nowt;
                            $('#i' + k + 'status').text('上传中');
                            console.log('#i' + k + 'status');
                            console.log($('#i' + k + 'status'));
                            var speed = Math.round(event.loaded / tfix);
                            speed = Math.round((speed - lastw) / 1024);
                            lastw = event.loaded;
                            if (event.loaded != event.total) {
                                var percentComplete = Math.round(event.loaded / event.total * 10000) / 100.00 + "%";
                                $('#i' + k + 'process').text(percentComplete);
                            } else {
                                $('#i' + k + 'process').text('100%');
                            }
                        }
                    };
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState == 4 && xhr.status == 200) {
                            $('#i' + k + 'status').text('上传完成待审核');
                            upNext();
                        } else if (xhr.readyState == 4 && xhr.status > 200) {
                            $('#i' + k + 'status').text('上传失败');
                            upNext();
                        }
                    };
                    formData.append('file', v);
                    formData.append('key', md5list[k]);
                    formData.append('x:md5', md5list[k]);
                    formData.append('token', token[k]);
                    xhr.open('POST', 'https://upload.qbox.me/');
                    xhr.send(formData);
                    newed = 1;
                    uploading = 1;
                    uploadid = k;
                    delete uplist[k];
                }
            });
            if (newed == 0)
                uploading = 0;
        }

        window.onbeforeunload = function () {
            if (uploading == 1) {
                if (!confirm('离开本页将会丢失未上传的所有资料！')) {
                    return '离开本页将会丢失未上传的所有资料！';
                }
            }
        };
    </script>

    <div class="am-u-sm-12">
        <h6>© 2013-2019 Biu.Moe 分享高音质 ACG 音乐 <a href="/Index/about">关于本站</a></h6>
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
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>