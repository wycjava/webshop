<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>商品详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
    <script src="js/jquery1.min.js"></script>
    <!-- start menu -->
    <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/megamenu.js"></script>
    <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function()
        {
            $('.scroll-pane').jScrollPane();
        });
    </script>
    <!-- start details -->
    <script src="js/slides.min.jquery.js"></script>
    <script>
        $(function(){
            $('#products').slides({
                preload: true,
                preloadImage: 'img/loading.gif',
                effect: 'slide, fade',
                crossfade: true,
                slideSpeed: 350,
                fadeSpeed: 500,
                generateNextPrev: true,
                generatePagination: false
            });
        });
    </script>
    <script type="text/javascript" src="http://www.coding123.net/js/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url: 'singleshow/'+${animalId},
                cache: false,
                type: "get",
                dateType: 'json',
                success: function (data) {
                    $("#animalname").html("");
                    $("#price").html("");
                    $("#products").html("");
                        $("#animalname").append(
                            data.breedName
                        );
                        $("#price").append(
                            "￥"+data.animalPrice
                        );
                        $("#breedname").append(
                            data.breedName
                        );
                        $("#products").append(
                            "<img calss=\"a\" src=\""+
                            data.animalPicurl+
                            "\" alt=\"\"/>"
                        );
                        $("#descr").append(
                            data.animalDescr
                        );
                },
                error: function (xhr) {
                    alert('servlet出错\n'+xhr.status+'\n'+xhr.responseText);
                }
            });
        });
    </script>
    <script>
        function checkout(i)
        {
            if(i==1)
            {
                var url = "CartaddServlet";
                window.location.href=url+"?sym=1";
            }
            else
            {
                var url2 = "CartaddServlet";
                window.location.href=url2+"?sym=2";
            }

        }
    </script>

    <!-- start zoom -->
    <link rel="stylesheet" href="css/zoome-min.css" />
    <script type="text/javascript" src="js/zoome-e.js"></script>
    <script type="text/javascript">
        $(function(){
            $('#img1,#img2,#img3,#img4').zoome({showZoomState:true,magnifierSize:[250,250]});
        });
    </script>
</head>
<body>
<div class="header-top">
    <div class="wrap">
        <div class="header-top-left">

            <div class="clear"></div>
        </div>
        <div class="cssmenu">
            <ul>
                <li>
                    <% String username = (String) session.getAttribute("unickname"); %>
                    <% if( username==null )
                    {
                        out.write("欢迎您,请登录！");
                        out.write("<li><a href=\"login\">登录</a></li> |");
                    }
                    else
                    {
                        out.write("<li> 欢迎！"+username+"！"+"</li>"+"<li><a href=\"Loginout\">注销</a></li>");
                    }
                    %>
                <li><a href="register">注册</a></li> |
                <li class="active"><a href="information.jsp">账户</a></li> |
                <li><a href="checkout.jsp">购物车</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header-bottom">
    <div class="wrap">
        <div class="header-bottom-left">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.png" alt=""/></a>
            </div>
            <div class="menu">
                <ul class="megamenu skyblue">
                    <li class="active grid"><a href="/">主页</a></li>
                    <li><a class="color4" href="#">宠物</a>
                        <div class="megapanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>选择分类</h4>
                                        <ul>
                                            <li><a href="womens.html">猫</a></li>
                                            <li><a href="womens.html">狗</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>狗分类</h4>
                                        <ul>
                                            <li><a href="womens.html">金毛</a></li>
                                            <li><a href="womens.html">松狮</a></li>
                                            <li><a href="womens.html">泰迪</a></li>

                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>猫分类</h4>
                                        <ul>
                                            <li><a href="womens.html">布偶猫</a></li>
                                            <li><a href="womens.html">孟买猫</a></li>
                                            <li><a href="womens.html">加拿大无毛猫</a></li>
                                            <li><a href="womens.html">英格兰折耳猫</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a class="color6" href="other.html">宠物周边</a></li>
                </ul>
            </div>
        </div>
        <div class="header-bottom-right">
            <div class="search">
                <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
                <input type="submit" value="Subscribe" id="submit" name="submit">
                <div id="response"> </div>
            </div>
            <div class="tag-list">
                <ul class="icon1 sub-icon1 profile_img">
                    <li><a class="active-icon c1" href="#"> </a>
                        <ul class="sub-icon1 list">
                            <li><h3>加入心愿单</h3><a href=""></a></li>
                            <li><p>欢迎 <a href="">点击购买</a></p></li>
                        </ul>
                    </li>
                </ul>
                <ul class="icon1 sub-icon1 profile_img">
                    <li><a class="active-icon c2" href="#"> </a>
                        <ul class="sub-icon1 list">
                            <li><h3>购物车</h3><a href=""></a></li>
                            <li><p>已有7件商品  <a href="">点击添加</a></p></li>
                        </ul>
                    </li>
                </ul>
                <ul class="last"><li><a href="#">支付方式</a></li></ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="mens">
    <div class="main">
        <div class="wrap">
            <ul class="breadcrumb breadcrumb__t"><a class="home" href="/">主页</a> / <a id="breedname" href="#"></a></ul>
            <div class="cont span_2_of_3">
                <div class="grid images_3_of_2">
                    <div id="container">
                        <div id="products_example">
                            <div id="products">
                            <%--图片--%>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="desc1 span_3_of_2" >
                    <h3 id="animalname" class="m_3">
                        <%--名称--%>
                    </h3>
                    <p id="price" class="m_5">
                        <%--价格--%></p><br/>
                        <span class="reducedfrom">3000 RMB</span>
                    <div class="btn_form">
                        <form method="post" action="confirm.jsp">
                            <!-- buy -->
                            <input type="button" id = "buy" value="购买" onclick="checkout(1)">
                            <input type="button" id = "cart" value="加入购物车" onclick="checkout(2)">
                        </form>
                    </div>

                    <p id="descr" class="m_text2">
                    <%--备注--%>
                    </p>
                </div>
                <div class="clear"></div>
                <div class="clients">


                    <script type="text/javascript">
                        $(window).load(function() {
                            $("#flexiselDemo1").flexisel();
                            $("#flexiselDemo2").flexisel({
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint:480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint:640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint:768,
                                        visibleItems: 3
                                    }
                                }
                            });

                            $("#flexiselDemo3").flexisel({
                                visibleItems: 5,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint:480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint:640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint:768,
                                        visibleItems: 3
                                    }
                                }
                            });

                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>



                <script src="js/jquery.easydropdown.js"></script>
            </div
            ><div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="footer">
    <div class="footer-top">
        <div class="wrap">
            <div class="section group example">
                <div class="col_1_of_2 span_1_of_2">
                    <ul class="f-list">
                        <li><img src="images/2.png"><span class="f-text">全场满5888元包邮</span><div class="clear"></div></li>
                    </ul>
                </div>
                <div class="col_1_of_2 span_1_of_2">
                    <ul class="f-list">
                        <li><img src="images/3.png"><span class="f-text">联系我们 0571-89999999 </span><div class="clear"></div></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="footer-middle">
        <div class="wrap">
            <div class="section group example">
                <div class="col_1_of_f_1 span_1_of_f_1">
                    <div class="section group example">
                        <div class="col_1_of_f_2 span_1_of_f_2">
                            <h3>QQ</h3>
                            <script>(function(d, s, id) {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) return;
                                js = d.createElement(s); js.id = id;
                                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                                fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));</script>
                            <div class="like_box">
                                <div class="fb-like-box" data-href="http//www.zjf88.com/" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
                            </div>
                        </div>
                        <div class="col_1_of_f_2 span_1_of_f_2">
                            <h3>微博公众号</h3>
                            <div class="recent-tweet">
                                <div class="recent-tweet-icon">
                                    <span> </span>
                                </div>
                                <div class="recent-tweet-info">
                                    <p>品质优选 <a href="#">专心为您提供健康的宠物</a></p>
                                </div>
                                <div class="clear"> </div>
                            </div>
                            <div class="recent-tweet">
                                <div class="recent-tweet-icon">
                                    <span> </span>
                                </div>
                                <div class="recent-tweet-info">
                                    <p>格调生活 <a href="#">一生中必养的宠物</a> 让您的生活不再孤单</p>
                                </div>
                                <div class="clear"> </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="col_1_of_f_1 span_1_of_f_1">
                    <div class="section group example">
                        <div class="col_1_of_f_2 span_1_of_f_2">
                            <h3>更多信息</h3>
                            <ul class="f-list1">
                                <li><a href="#">支持30天无忧退货 </a></li>
                                <li><a href="#">共有1000余种宠物供您选择 </a></li>
                                <li><a href="#">宠物同城直达，给您最放心的服务</a></li>
                                <li><a href="#">全场满5888元包邮 </a></li>
                                <li><a href="#">宠物运输途中出现任何问题包赔 </a></li>
                                <li><a href="#">我们保证出售的每一只宠物都是活泼健康的</a></li>
                            </ul>
                        </div>
                        <div class="col_1_of_f_2 span_1_of_f_2">
                            <h3>联系我们</h3>
                            <div class="company_address">
                                <p>浙江省，杭州市,江干区</p>
                                <p>310018</p>
                                <p>中国杭州</p>
                                <p>Phone:(0571) 88888888</p>
                                <p>Fax: (000) 000 00 00 0</p>
                                <p>Email: <span>316553002@qq.com</span></p>

                            </div>
                            <div class="social-media">
                                <ul>
                                    <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="Google"><a href="#" target="_blank"> </a></span></li>
                                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Linked in"><a href="#" target="_blank"> </a> </span></li>
                                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Rss"><a href="#" target="_blank"> </a></span></li>
                                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Facebook"><a href="#" target="_blank"> </a></span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="wrap">
            <div class="copy">

            </div>
            <div class="f-list2">
                <ul>
                    <li class="active"><a href="about.html">关于我们</a></li> |
                    <li><a href="delivery.html">退货 & 换货</a></li> |
                    <li><a href="delivery.html">售后服务</a></li> |
                    <li><a href="contact.html">联系我们</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>