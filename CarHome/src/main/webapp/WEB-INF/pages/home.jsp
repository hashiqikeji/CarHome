<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/"+"resources/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CarHome</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
    <style>
        .row{
            background:blueviolet;
        }
        .CarHome{
            color: green;
        }
        .container{
            width: 100%;
        }
    </style>

    <!--ajax异步获取数据-->
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "post",
                url: "../home/showcarpic",
                success: function (data) {
                    // alert(data);
                    addCar(data);
                }
            });
        });

        function addCar(data) {
            var message1 = "";
            var message2="";
            var message3="";

            message1 =" <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[1].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[1].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[1].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id="+data[1].carInfo.carId+"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[2].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[2].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[2].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[2].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[3].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[3].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[3].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[3].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[0].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[0].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[0].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[0].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"

            message2 =" <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[4].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[4].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[1].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[4].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[5].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[5].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[5].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[5].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[6].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[6].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[6].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[6].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[7].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[7].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[7].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[7].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>";

            message3 =" <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[8].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[8].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[8].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[8].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[9].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[9].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[9].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[9].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[10].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[10].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[10].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[10].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>"+
                " <div class='col-sm-3 product wowload fadeInUp '>"+
                "<img src='"+data[11].pic_url+"' class='img-responsive'>"+
                "<div class='overlay'>"+
                "<div class='ab-wrap'>"+
                "<div class='ab-center text-center'>"+
                "<h3>"+data[11].carInfo.brand+"</h3>"+
                "<p style='color:red;font-size: 20px'><u>"+data[11].carInfo.price+"&nbsp;万<u></p>"+
                "<a href='/page/details?id=\"+data[12].carInfo.carId+\"' title='Brown' class='btn btn-default gallery-image'data-gallery=''>详细查看</a>"+
                "</div></div> </div> </div>";

            $("#portfolio_1").append(message1);
            $("#portfolio_2").append(message2);
            $("#portfolio_3").append(message3);
        }
    </script>


</head>

<body>

<div class="container">
    <div class="row" ">
    <p></p>
    <div class="col-md-4" style="background-color:white" >
        <img src="img/7.jpg" class="img-rounded">
        <div class="col-md-4" style="background-color: #dedef8;">
            <H2 class="CarHome">CarHome</H2>
        </div>
    </div>
    <br><br><br>
    <div class="input-group ">
        <span class="input-group-addon btn btn-primary">搜索</span>
        <input type="text" class="form-control input-lg" style="width: 400px" >
    </div>
</div>
</div>

<p></p>
<ul class="nav nav-pills">
    <li class="active">
        <a href="/page/index">首页</a>
    </li>
    <li><a href="/page/showCar">我要买车</a></li>
    <li><a href="/page/sellCar">我要卖车</a></li>
    <li><a href="/page/discuss">车友圈</a></li>

    <li><a href="/login/login">登录</a></li>
    <li><a href="/registerPage">注册</a></li>
    <li><a href="${basePath}/page/user">个人中心</a></li>
    <li>
        <select name="car_brand" style="font-size: 15px;border: solid blueviolet">
            <option value="广州">广州</option>
            <option value="北京">北京</option>
            <option value="上海">上海</option>
            <option value="深圳">深圳</option>
            <option value="其他地区">其他地区</option>
        </select>
    </li>
    <c:if test="${!empty username}">
        <li ><a style="color: red">欢迎您: ${username}</a></li>
    </c:if>
</ul>

<!--热门新车-->
<div style="margin-top:70px;margin-bottom:30px;">
    <p style="padding-left:40px;font-size:30px;height:30px;border-bottom:1px ">
        <em style="border-bottom:4px solid green;">热门新车</em>
    </p>
</div>
<div class="row-fluid gallery clearfix" id="portfolio_1"></div>

<div style="border:1px solid red"></div>
<!--二手车-->
<div style="margin-top:70px;margin-bottom:30px;">
    <p style="padding-left:40px;font-size:30px;height:30px;border-bottom:1px ">
        <a href="#"><em style="border-bottom:4px solid green;" >品质二手车>></em></a>
    </p>
</div>

<div class="row-fluid gallery clearfix" id="portfolio_2"></div>

<div style="border:1px solid red"></div>

<div style="border:1px solid green"></div>

<div style="margin-top:70px;margin-bottom:30px;" id="">
    <p style="padding-left:40px;font-size:30px;height:30px;border-bottom:1px ">
        <em style="border-bottom:4px solid blue;">经销商促销</em>
    </p>
</div>

<div class="row-fluid gallery clearfix" id="portfolio_3"></div>

<br><br>
<div style="border:1px solid green"></div>
<h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    关于我们&nbsp&nbsp&nbsp联系我们&nbsp&nbsp&nbsp招贤纳士&nbsp&nbsp&nbsp服务协议&nbsp&nbsp&nbsp友情链接&nbsp&nbsp&nbsp本网站非商业用途</h3>
</body>

</html>