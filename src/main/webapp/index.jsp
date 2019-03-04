<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>recursion</title>
    <style type="text/css">
        body {
            overflow: hidden;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">

        $(function () {
            // 淡入淡出
            $("#not").show(600).delay(1600).fadeOut(600);
            $("#but1").click(function () {
                // 获取显示内容
                var flag = $("#text1").val();
                $("#show").html(flag);
                if (flag=="admin"){
                    $("#not").html(flag+"...欢迎您:").css({"color":"green","border":"1px solid green"});
                }else {
                    $("#not").html(flag+"...fail你好啊").css({"color":"red","border":"1px solid red"});
                }
                $("#not").show().delay(1600).fadeOut(600);
            });
        });
    </script>
</head>
<body style="width: 80%;margin: 0 auto;padding-top: 10%">
<input type="text" name="text1" id="text1"><button id="but1">click</button>
<div id="not" style="display: none;padding: 5px;
        position: absolute; top: 10px; left: 50%;">初始化提示
</div>
<div id="show" style="color: green">提示栏</div>
</body>
</html>
