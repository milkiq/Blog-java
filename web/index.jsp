<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/24 0024
  Time: 下午 7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <title>Blog.Home</title>
  <link rel="stylesheet" type="text/css" href="css/index.css"/>
</head>
<body>
<div class="bodyRiband"></div>
<header class="head">
  <ul>
    <li><img src="images/home.png"/></li>
    <li><img src="images/menu.png"/></li>
    <li><img src="images/message.png"/></li>
    <li><img src="images/resources.png"/></li>
    <li><img src="images/tools.png"/></li>
  </ul>
</header>
<article>
  <div class="main">
    <div class="something">
      <div class="st-left">
        <p>MILKIQ'S BLOG</p>
      </div>
      <div class="st-right">
        <p class="st-title">&nbsp;ABOUT&nbsp;ME</p>
        <img class="headSculpture" src="images/milk.png"/>
        <p class="st-intro">
          I'm milkIQ and this blog is concerned about Web Front-End, Little Web Tools and other interesting
          topics.<br/>
          I'm glad you can visit my blog, and if you have any questions, please feel free to leave a comment
          or contact me by <a href="mailto:ice.from.black@gmail.com">email</a>.
        </p>
      </div>
    </div>
    <p class="blog-t">-My&nbsp;Blog-</p>
    <div class="blog">
      <div class="one-blog">
        <div class="blog-date">01</div>
        <p class="blog-title">第一篇博文</p>
        <p class="blog-abstract">
          有没有觉得浏览器自带的原始滚动条很不美观，同时也有看到很多网站的自定义滚动条显得高端，就连chrome32.0开发板都抛弃了原始的滚动条，美观多了。那webkit浏览器是如何自定义滚动条的呢？前言webkit支持拥有overflow属性的区域，列表框，下拉菜单，textarea的滚动条自定义样式，所以用处还是挺大的。当然，兼容所有浏览器的滚动条样式目前是不存在的。
        </p>
      </div>
      <div class="one-blog">
        <div class="blog-date">01</div>
        <p class="blog-title">第一篇博文</p>
        <p class="blog-abstract">
          有没有觉得浏览器自带的原始滚动条很不美观，同时也有看到很多网站的自定义滚动条显得高端，就连chrome32.0开发板都抛弃了原始的滚动条，美观多了。那webkit浏览器是如何自定义滚动条的呢？前言webkit支持拥有overflow属性的区域，列表框，下拉菜单，textarea的滚动条自定义样式，所以用处还是挺大的。当然，兼容所有浏览器的滚动条样式目前是不存在的。
        </p>
      </div>
      <div class="one-blog">
        <div class="blog-date">01</div>
        <p class="blog-title">第一篇博文</p>
        <p class="blog-abstract">
          有没有觉得浏览器自带的原始滚动条很不美观，同时也有看到很多网站的自定义滚动条显得高端，就连chrome32.0开发板都抛弃了原始的滚动条，美观多了。那webkit浏览器是如何自定义滚动条的呢？前言webkit支持拥有overflow属性的区域，列表框，下拉菜单，textarea的滚动条自定义样式，所以用处还是挺大的。当然，兼容所有浏览器的滚动条样式目前是不存在的。
        </p>
      </div>
      <div class="one-blog">
        <div class="blog-date">01</div>
        <p class="blog-title">第一篇博文</p>
        <p class="blog-abstract">
          有没有觉得浏览器自带的原始滚动条很不美观，同时也有看到很多网站的自定义滚动条显得高端，就连chrome32.0开发板都抛弃了原始的滚动条，美观多了。那webkit浏览器是如何自定义滚动条的呢？前言webkit支持拥有overflow属性的区域，列表框，下拉菜单，textarea的滚动条自定义样式，所以用处还是挺大的。当然，兼容所有浏览器的滚动条样式目前是不存在的。
        </p>
      </div>
    </div>
    <a style="cursor: pointer;-webkit-user-select:none;
    -moz-user-select:none;
    -ms-user-select:none;
    user-select:none; "><p class="blog-m">MORE&nbsp;>></p></a>
  </div>
  <div class="message">
    <div class="middle">
      <div class="text">
        <div class="over">
          <div class="show">
            <p>人生在世须尽欢</p>
            <p>人生在世须尽欢</p>
            <p>人生在世须尽欢</p>
            <p>莫使金樽空对月</p>
            <p>莫使金樽空对月</p>
            <p>莫使金樽空对月</p>
            <p>黄河之水天上来</p>
            <p>黄河之水天上来</p>
            <p>黄河之水天上来</p>
          </div>
        </div>
        <div class="se-all">
          <div class="select" onclick="move(0)"></div>
          <div class="select" onclick="move(1)"></div>
          <div class="select" onclick="move(2)"></div>
        </div>
      </div>
      <img src="images/comment.png" class="se-img"/>
    </div>
  </div>
</article>
<footer></footer>
<script type="text/javascript">
    //    var selects = document.getElementsByClassName('select');
    var time;
    var changeP = document.getElementsByClassName('show')[0].getElementsByTagName('p')[0];
    var changeWidth = window.getComputedStyle(changeP, null).width;
    changeWidth = changeWidth.toString().substr(0, changeWidth.length - 2);
    changeWidth = parseInt(changeWidth);

    function move(i) {
        clearInterval(time);
        if (document.getElementsByClassName('over')[0].scrollLeft < i * changeWidth) {
            time = setInterval(function () {
                if (document.getElementsByClassName('over')[0].scrollLeft >= i * changeWidth) {
                    clearInterval(time);
                } else {
                    document.getElementsByClassName('over')[0].scrollLeft += changeWidth / 20;
                }
            }, 10);
        } else if (document.getElementsByClassName('over')[0].scrollLeft > i * changeWidth) {
            time = setInterval(function () {
                if (document.getElementsByClassName('over')[0].scrollLeft <= i * changeWidth) {
                    clearInterval(time);
                } else {
                    document.getElementsByClassName('over')[0].scrollLeft -= changeWidth / 20;
                }
            }, 10);
        }
        for(var j = 0;j<document.getElementsByClassName('select').length;j++){
            document.getElementsByClassName('select')[j].style.backgroundColor = "#f6f6f8";
        }
        document.getElementsByClassName('select')[i].style.backgroundColor = "#000000";
    }

    move(0);
</script>
<link rel="stylesheet" href="css/editormd.min.css" />
<div id="editormd" style="width: 100%;height: 500px;">
  <textarea style="width: 100%;height: 500px;display:none;">### Hello Editor.md !</textarea>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/editormd.min.js"></script>
<script type="text/javascript">
    $(function() {
        var editor = editormd("editormd", {
            path : "../lib/" // Autoload modules mode, codemirror, marked... dependents libs path
        });

        /*
        // or
        var editor = editormd({
            id   : "editormd",
            path : "../lib/"
        });
        */
    });
</script>
</body>
</html>