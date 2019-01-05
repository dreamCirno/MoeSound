<%--
  User: dreamCirno
  Date: 2019/1/6
  Time: 2:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<audio src="/music/5/13/8ad25648-99fd-4600-9912-de48de5c6c7e_7!!-オレンジ(AcousticVer.).flac" controls="controls"></audio>
<form action="${pageContext.request.contextPath}/Upload" enctype="multipart/form-data" method="post">
    上传用户：<input type="text" name="username"><br/>
    上传文件1：<input type="file" name="file1" multiple="multiple"><br/>
    上传文件2：<input type="file" name="file2"><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
