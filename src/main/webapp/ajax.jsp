<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/21
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajax</title>
    <link rel="icon" type="image/ico" href="img/logo.ico"/>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            // ajax请求的三种方式
            $("#but1").click(function () {
                var u = $("#user1").val();
                var req = new XMLHttpRequest();
                req.open("get","server.jsp?u="+u,true);
                req.onreadystatechange=function () {
                    if (req.readyState == 4 && req.status == 200){
                        var text = req.responseText;
                        // alert("text:"+text);
                        if (text == 1)
                            $("#notice").html("repeat").css("color","red");
                        else
                            $("#notice").html("fail").css("color","green");
                    }
                };
                req.send();
            });
            $("#but2").click(function () {
                var u = $("#user1").val();
                $.ajax({
                    url:"server.jsp",
                    type: "get",
                    data: "u="+u,
                    success: function (msg) {
                        if (msg == 1)
                            $("#notice").html("repeat").css("color","red");
                        else
                            $("#notice").html("fail").css("color","green");
                    }
                });
            });
            $("#but3").click(function () {
                var u = $("#user1").val();
                $.post("server.jsp",{"u":u},function (msg) {
                    if (msg == 1) {
                        $("#notice").html("repeat").css("color", "red");
                        $("#show").html("重复").css({"color":"red","border":"1px solid red"}).show(300).delay(1200).fadeOut(600);
                    }
                    else{
                        $("#notice").html("fail").css("color","green");
                        $("#show").html("创建").css({"color":"green","border":"1px solid green"}).show(300).delay(1200).fadeOut(600);
                    }
                })
            });
        });
    </script>
</head>
<body>
    <div>
        <p>用户名:<input type="text" name="user1" id="user1">
            <span id="notice"></span>
        </p>
        <p><input type="button" id="but1" value="but1"></p>
        <p><input type="button" id="but2" value="but2"></p>
        <p><input type="button" id="but3" value="but3"></p>
        <div id="show" style="display: none;position: absolute;top: 10px;left: 20%;padding:5px"></div>
    </div>
</body>
</html>
